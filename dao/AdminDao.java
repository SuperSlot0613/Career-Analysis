package in.responsenet.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import in.responsenet.tcet.model.Admin;
import in.responsenet.tcet.model.Login;

public class AdminDao {

    static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	
	static final String DB_URL="jdbc:mysql://localhost/career_analysis?serverTimezone=UTC";
	
	static final String USER="root";
	
    static final String PASS="";
    
    private static final String INSERT_ADMIN_SQL=" INSERT INTO `tbl_admin`( `username`, `password`) VALUES (?,?)";
    
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
    public static void AdminForm(Admin newadmin) throws ClassNotFoundException
    {
    	try(Connection connection = getConnection();
    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_ADMIN_SQL))
    	{
    		preparedStatement.setString(1,newadmin.getUsername());
    		preparedStatement.setString(2,newadmin.getPassword());
    		
    		preparedStatement.executeUpdate();
    	}
    	catch(SQLException e)
    	{
    		e.printStackTrace();
    	}
    }

}
