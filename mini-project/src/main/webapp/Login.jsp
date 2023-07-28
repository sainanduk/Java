<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
    response.setHeader("Pragma", "no-cache"); 
    response.setHeader("Expires", "-1");
    HttpSession sessio = request.getSession();
    session.invalidate();
    
    %>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login</title>
      <link rel="stylesheet" href="css/style.css">
      
   </head>
   <body>
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action="login" method="post">
            <div class="field">
               <input type="text" required name="uname">
               <label>Uname</label>
            </div>
            <div class="field">
               <input type="password" required name="password">
               <label>Password</label>
            </div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               Not a member? <a href="Register.jsp">Signup now</a>
            </div>
         </form>
      </div>
   </body>
</html>