<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="logoutheader.jsp" %>
<%@ page import="java.sql.*" %>

<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Expires", "0");

    
    if (session.getAttribute("username")== null||session == null) {
        response.sendRedirect("Login.jsp");
    } 
    else {
        String uname = (String) session.getAttribute("username");
       
        
        
            String url, usename, pass;
            url = "jdbc:mysql://localhost:3306/student";
            usename = "root";
            pass = "******";
            
            Connection con = DriverManager.getConnection(url, usename, pass);
            String query = "SELECT * FROM fname WHERE uname = ?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, uname);
            ResultSet res = stmt.executeQuery();
            if(res.next()){
        
        
        %>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <title>Dashboard</title>
         	<link href="style1.css" >
         	  <style>
        .border{
            border-color:solid black;
            border-radius:10px;
            background:grey;
            margin-right:30%;
            margin-left:20%;
            margin-top:10%;
            padding:50px;
        }
        h3{
        color:white;
        }
       </style> 
    
        </head>
        <body>
            <!-- Display the retrieved data here using JSP expression tags. -->
            <div class="border">
            <h2>loged in sucessfull..😀</h2>
            <h3>first name: <%= res.getString(1) %></h3>
            <h3>Last Name: <%= res.getString(2) %></h3>
            <h3>Date of Birth: <%=res.getString(3) %></h3>
            <h3>Email ID: <%= res.getString(4) %></h3>
            <h3>Mobile: <%= res.getString(5) %></h3>
            <h3>Alternate Mobile: <%= res.getString(6) %></h3>
            <h3>Username: <%= res.getString(7) %></h3>
            </div>
   
        </body>
        </html>
        <% 
        
            }else
            	{
            	}
            	}
%>


