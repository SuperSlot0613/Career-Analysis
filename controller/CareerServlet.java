package in.responsenet.tcet.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.responsenet.tcet.dao.*;
import in.responsenet.tcet.model.*;

@WebServlet("/")
public class CareerServlet extends HttpServlet {
	private RegisterDao RegisterDao;
	private LoginDao loginDao;
	private ContactDao ContactDao;
	public void init() {
		RegisterDao= new RegisterDao();
		loginDao=new LoginDao();
		ContactDao=new ContactDao();
		
		
	}
	protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		String action=request.getServletPath();
		switch(action)
		{
		case"/Home":
			HomePage(request,response);
			break;
		case"/Login":
			LoginPage(request,response);
			break;
		case"/Admin":
			AdminPage(request,response);
			break;
		case"/College":
			CollegePage(request,response);
			break;
		case"/Registration":
			RegisterPage(request,response);
			break;
		case"/Option":
			OptionPage(request,response);
			break;
		case"/AdminLogin":
			try {
				AdminLogin(request,response);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (ServletException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case"/Success":
			SuccessPage(request,response);
			break;
		case"/Register":
			try {
				Register(request,response);
			} catch (ServletException e) {
		
				e.printStackTrace();                                                                                   
			} catch (IOException e) {
			
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			break;
		case"/LoginForm":
			try {
				LoginForm(request,response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case"/ContactFrom":
			try {
				ContactForm(request,response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case"/View":
			try {
				ListAllStudent(request,response);
				/*RegisterList(request,response);*/
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case"/Register_Info":
			try {
				RegisterInfo(request,response);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:
			ErrorPage(request,response);
			break;
		}
		
		
	}
	public void RegisterInfo(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		List<Register> Registerlist=RegisterDao.ListAllStudent();
		
		request.setAttribute("Registerlist", Registerlist);
		
		request.getRequestDispatcher("Register-Info.jsp");
		RequestDispatcher req=request.getRequestDispatcher("Register-Info.jsp");
		
		req.forward(request, response);	
	}
	public void ListAllStudent(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		List<Login> loginlist=LoginDao.listAllStudent();
		
		request.setAttribute("loginlist", loginlist);
		
		request.getRequestDispatcher("vsiew-page.jsp");
		RequestDispatcher req=request.getRequestDispatcher("view-page.jsp");
		
		req.forward(request, response);	
	}
	public void ContactForm(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		String	name=request.getParameter("name");
		String	email=request.getParameter("email");
		String	subject=request.getParameter("subject");
     	String	message=request.getParameter("message");
     	
 	    Contact  newcontact = new Contact(name,email,subject,message);
		
    	ContactDao.contactForm(newcontact);
     	
     	response.sendRedirect("Success");
	}
	public void LoginForm(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		String	username=request.getParameter("username");
     	String	password=request.getParameter("password");
     	
 	    Login  newlogin = new Login(username,password);
		
    	LoginDao.loginForm(newlogin);
     	
     	response.sendRedirect("College");
	}
	public void AdminLogin(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		String	username=request.getParameter("username");
     	String	password=request.getParameter("password");
     	System.out.println(username);
     	System.out.println(password);
 	    Admin  newadmin = new Admin(username,password);
		
 	    AdminDao.AdminForm(newadmin);
     	
     	response.sendRedirect("View");
	}
	public void Register(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException, SQLException{
		
     	String	Name=request.getParameter("Name");
     	String	Address=request.getParameter("Address");
     	String	Phone=request.getParameter("Phone");
     	String	Email=request.getParameter("Email");
     	String	Exam=request.getParameter("Exam");
     	String	StateRank=request.getParameter("StateRank");
     	String	AllIndiaRank=request.getParameter("AllIndiaRank");
     	String	SeatNumber=request.getParameter("SeatNumber");
     	String	password=request.getParameter("password");
     	
     	Register  newRegister = new Register(Name,Address,Phone,Email,Exam,StateRank,AllIndiaRank,SeatNumber,password);
		
    	RegisterDao.register(newRegister);
     	response.sendRedirect("Success");
		
		
	} 
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		doGet(request,response);
	}
	private void HomePage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("HomePage.jsp");
		req.forward(request, response);
	}
	private void OptionPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("Option.jsp");
		req.forward(request, response);
	}
	private void LoginPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("login.jsp");
		req.forward(request, response);
	}
	private void AdminPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req = request.getRequestDispatcher("Admin.jsp");
		req.forward(request, response);	
	}
	private void RegisterPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("Register.jsp");
		req.forward(request, response);
	}
	private void CollegePage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("College.jsp");
		req.forward(request, response);
	}
	private void ErrorPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("ErrorPage.jsp");
		req.forward(request, response);	
	}
	private void SuccessPage(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException{
		RequestDispatcher req=request.getRequestDispatcher("Success.jsp");
		req.forward(request, response);	
	}

}
