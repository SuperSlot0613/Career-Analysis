package in.responsenet.tcet.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import in.responsenet.tcet.model.Login;

public class LoginDao {

    static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	
	static final String DB_URL="jdbc:mysql://localhost/career_analysis?serverTimezone=UTC";
	
	static final String USER="root";
	
    static final String PASS="";
    
    private static final String INSERT_LOGIN_SQL=" INSERT INTO `tbl_login`( `username`, `password`) VALUES (?,?)";
    private static final String INSERT_AllLogin_SQL="SELECT * FROM `tbl_login`";
    
    protected static Connection getConnection() throws ClassNotFoundException, SQLException
    {
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
    
    public static void loginForm(Login newlogin) throws ClassNotFoundException
    {
    	try(Connection connection = getConnection();
    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_LOGIN_SQL))
    	{
    		preparedStatement.setString(1,newlogin.getUsername());
    		preparedStatement.setString(2,newlogin.getPassword());
    		
    		preparedStatement.executeUpdate();
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    	}
    }
    
    public static List<Login> listAllStudent() throws ClassNotFoundException {
    	
    	List<Login> loginlist =new ArrayList<>();
    	try(Connection connection = getConnection();
    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_AllLogin_SQL))
    	{
    		
    		
    		ResultSet result = preparedStatement.executeQuery();
    		while(result.next())
    		{
    		String username=result.getString("username");
    		String password=result.getString("password");
    		loginlist.add(new Login(username,password));
    			
    		}
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    	}
    	return loginlist;
    }

}
