<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
   <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
    response.setHeader("Pragma", "no-cache"); 
    response.setHeader("Expires", "0");
    // Invalidate the session
    session.invalidate();
    
    // Redirect to the logout page
    response.sendRedirect("Login.jsp");
%>
<h1>you have logged out sucessfully</h1>

</body>
</html>