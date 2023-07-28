package com.java;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register2")
public class RegisterServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(false);
		
		Studentdata stu;
		  if (session != null) {
	            stu = (Studentdata) session.getAttribute("studata");
	            String email = request.getParameter("email");
	    		String mobile = request.getParameter("mobile");
	    		String alternate = request.getParameter("alternate");
	    		stu.setEmail(email);
	    		stu.setMobile(mobile);
	    		stu.setAlternate(alternate);
	    		session.setAttribute("studata", stu);
	    		response.sendRedirect("Register3.jsp");
	            
	           
	        }
		
	}

}
