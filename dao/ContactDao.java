package in.responsenet.tcet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import in.responsenet.tcet.model.Contact;
import in.responsenet.tcet.model.Login;

public class ContactDao {
	    static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
		
		static final String DB_URL="jdbc:mysql://localhost/career_analysis?serverTimezone=UTC";
		
		static final String USER="root";
		
	    static final String PASS="";
	    
	    private static final String INSERT_CONTACT_SQL="INSERT INTO `tbl_contact`(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";
	    private static final String INSERT_CONTACTIFO_SQL="SELECT * FROM `tbl_contact`";
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
	    public static void contactForm(Contact newcontact) throws ClassNotFoundException
	    {
	    	try(Connection connection = getConnection();
	    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_CONTACT_SQL))
	    	{
	    		preparedStatement.setString(1,newcontact.getName());
	    		preparedStatement.setString(2,newcontact.getEmail());
	    		preparedStatement.setString(3,newcontact.getSubject());
	    		preparedStatement.setString(4,newcontact.getMessage());
	    		
	    		preparedStatement.executeUpdate();
	    	}
	    	catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    	}
	    }
	    public List<Contact> listAllStudent() throws ClassNotFoundException {
	    	
	    	List<Contact> contactlist =new ArrayList<>();
	    	try(Connection connection = getConnection();
	    			PreparedStatement	preparedStatement = connection.prepareStatement(INSERT_CONTACTIFO_SQL))
	    	{
	    		
	    		
	    		ResultSet result = preparedStatement.executeQuery();
	    		while(result.next())
	    		{
	    		String name=result.getString("name");
	    		String email=result.getString("email");
	    		String subject=result.getString("subject");
	    		String message=result.getString("message");
	    		contactlist.add(new Contact(name,email,subject,message));
	    			
	    		}
	    	}
	    	catch(SQLException e)
	    	{
	    		e.printStackTrace();
	    	}
	    	return contactlist;
	    }

}
