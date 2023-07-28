package com.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("password");
		
		
		try {
			 String url= "jdbc:mysql://localhost:3306/student";
			 String user ="root",password = "N@ndu456";
			Connection con = DriverManager.getConnection(url,user,password);
			String query = "select *from fname where uname = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, uname);
			ResultSet answer = stmt.executeQuery();
			if(answer.next())
			{
				String dbuname =answer.getString("uname");
				String dbpass = answer.getString("pass");
				if(uname.equals(dbuname)&& pass.equals(dbpass)) {
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("dashboard.jsp");
				
				}	
				else
				{
					response.sendRedirect("error.jsp");
				}
			}
			else {
				response.sendRedirect("error.jsp");
			}

			
			
			
			
		}
		catch(SQLException e) {
			
		} 
		
	}
		
		
	}


