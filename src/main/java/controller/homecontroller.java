package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller {
	
	@RequestMapping("/")
	public void home(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.sendRedirect("AdminLogin.jsp");
	}
	
	@RequestMapping("/login")
	public void login(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String userid=req.getParameter("userid");
		String password=req.getParameter("password");
		
		if(userid.equals("admin"))
		{
			if(password.equals("123"))
			{
				res.sendRedirect("home.jsp");
			}
			else
			{
				res.sendRedirect("AdminLogin.jsp");
			}
		}
		else
		{
			res.sendRedirect("AdminLogin.jsp");
		}
	}
	
	@RequestMapping("/assignteachername")
	public void assignteachername(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		try {
			HttpSession session2=req.getSession();
			String id=(String) session2.getAttribute("Id");
			String teachername=req.getParameter("newteachername");
			System.out.println(id+" "+teachername);
			
		Class.forName("com.mysql.jdbc.Driver");
		//Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.c1dzwtudyvfv.us-east-2.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		PreparedStatement ps=con.prepareStatement("update teacherstable set Teachersname='"+teachername+"' where Id='"+id+"'");
		ps.executeUpdate();
		res.sendRedirect("AssignTeachers.jsp");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/assignclassname")
	public void assignclassname(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		try {
			HttpSession session1=req.getSession();
			String id=(String) session1.getAttribute("Id");
			String classname=req.getParameter("newclassname");
			System.out.println(id+" "+classname);
			
		Class.forName("com.mysql.jdbc.Driver");
		//Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.c1dzwtudyvfv.us-east-2.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		PreparedStatement ps=con.prepareStatement("update teacherstable set Classes='"+classname+"' where Id='"+id+"'");
		ps.executeUpdate();
		res.sendRedirect("AssignClasses.jsp");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
}
