package in.responsenet.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import in.responsenet.tcet.model.Login;
import in.responsenet.tcet.model.Register;

public class RegisterDao {

		static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		
		static final String DB_URL="jdbc:mysql://localhost/Career_analysis?serverTimezone=UTC";
		
		static final String USER="root";
		
	    static final String PASS="";
	    
	    private static final String INSERT_Register_SQL=" INSERT INTO `tbl_register`(`Name`, `Address`, `Phone`, `Email`, `Exam`, `StateRank`, `AllIndiaRank`, `SeatNumber`,`password`) VALUES (?,?,?,?,?,?,?,?,?)";
	    private static final String INSERT_REGISTER_SQL ="SELECT * FROM `tbl_register`";
	    
	    protected static Connection getConnection() throws SQLException {
	    	Connection connection=null;
	    	
	    	try {
				Class.forName(JDBC_DRIVER);
				
				connection=DriverManager.getConnection(DB_URL,USER,PASS);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	return connection;
	    }
	   
	    public static void register(Register newRegister) throws SQLException {
	    	try(Connection connection = getConnection();
	    			PreparedStatement	preparedStatement=connection.prepareStatement(INSERT_Register_SQL))
	    	{
	    		preparedStatement.setString(1,newRegister.getName());
	    		preparedStatement.setString(2,newRegister.getAddress());
	    		preparedStatement.setString(3,newRegister.getPhone());
	    		preparedStatement.setString(4,newRegister.getEmail());
	    		preparedStatement.setString(5,newRegister.getExam());
	    		preparedStatement.setString(6,newRegister.getStateRank());
	    		preparedStatement.setString(7,newRegister.getAllIndiaRank());
	    		preparedStatement.setString(8,newRegister.getSeatNumber());
	    		preparedStatement.setString(9,newRegister.getPassword());
	    		
	    		preparedStatement.executeUpdate();
	    	}
	    	catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    	}
	    	
	    }
	    public List<Register> ListAllStudent() throws ClassNotFoundException {
	    	
	    	List<Register> Registerlist =new ArrayList<>();
	    	try(Connection connection = getConnection();
	    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_REGISTER_SQL))
	    	{
	    		
	    		
	    		ResultSet result = preparedStatement.executeQuery();
	    		while(result.next())
	    		{
	    		String Name=result.getString("Name");
	    		String Address=result.getString("Address");
	    		String Email=result.getString("Email");
	    		String password=result.getString("password");
	    		String Phone=result.getString("Phone");
	    		String Exam=result.getString("Exam");
	    		String StateRank=result.getString("StateRank");
	    		String AllIndiaRank=result.getString("AllIndiaRank");
	    		String SeatNumber=result.getString("SeatNumber");
	    		Registerlist.add(new Register(Name,Address,Email,password,Phone,Exam,StateRank,AllIndiaRank,StateRank,SeatNumber));
	    		
	    			
	    		}
	    	}
	    	catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    	}
	    	return Registerlist;
	    }
	
	    

	}

