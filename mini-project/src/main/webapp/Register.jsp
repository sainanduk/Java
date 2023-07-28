<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
 <div class="wrapper">
         <div class="title">
            signup form
         </div>
         <form action="register" method="post">
            <div class="field">
               <input type="text" required name="fname">
               <label>firstName</label>
            </div>
            <div class="field">
               <input type="text" required name="lname">
               <label>lastname</label>
            </div>
            <div class="field">
               <input type="text" required name="dob">
               <label>YYYY-MM-DD</label>
            </div>
           
            <div class="field">
               <input type="submit" value="Next">
            </div>
            <div class="signup-link">
               already a member? <a href="Login.jsp">Signin</a>
            </div>
         </form>
      </div>   
</body>
</html>