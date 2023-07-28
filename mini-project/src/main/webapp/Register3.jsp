<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Isignup</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="wrapper">
         <div class="title">
            signup form
         </div>
         <form action="register3" method="post">
            <div class="field">
               <input type="text" required name="uname">
               <label>username</label>
            </div>
            <div class="field">
               <input type="password" required name="password">
               <label>password</label>
            </div>
             <div class="field">
               <input type="submit" value="Submit">
            </div>
            
         </form>
      </div>

</body>
</html>