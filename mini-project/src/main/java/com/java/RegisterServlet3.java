package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/register3")
public class RegisterServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		
	   
	    	Studentdata stu;
	    	if(session != null) {
	    		stu = (Studentdata) session.getAttribute("studata");
	    		String uname = request.getParameter("uname");
	    		String pass = request.getParameter("password");
	    		stu.setUname(uname);
	    		stu.setPassword(pass);
	    		session.setAttribute("studata", stu);
	    		 PrintWriter writer = response.getWriter();
	    		 //writer.print(stu.getFistsname());
	    		
	    		try {
	    			 String url= "jdbc:mysql://localhost:3306/student";
	    			 String user ="root",password = "******";
	    			Connection con = DriverManager.getConnection(url,user,password);
	    			String query = "insert into fname values(?,?,?,?,?,?,?,?)";
	    			PreparedStatement stmt = con.prepareStatement(query);
	    			stmt.setString(1, stu.getFistsname());
	    			stmt.setString(2, stu.getLastname());
	    			stmt.setString(3, stu.getDob());
	    			stmt.setString(4, stu.getEmail());
	    			stmt.setString(5, stu.getMobile());
	    			stmt.setString(6, stu.getAlternate());
	    			stmt.setString(7, stu.getUname());
	    			stmt.setString(8, stu.getPassword());
	    			stmt.executeUpdate();
	    			response.sendRedirect("Login.jsp");
	    		}
	    		catch(SQLException e) {
	    			writer.print(e);
	    		} 
	    		
	    	}
            
        
		
		
		
	}
	}

