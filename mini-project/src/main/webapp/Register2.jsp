<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="wrapper">
         <div class="title">
            signup form
         </div>
         <form action="register2" method="post">
            <div class="field">
               <input type="text" required name="email">
               <label>email</label>
            </div>
            <div class="field">
               <input type="text" required name="mobile">
               <label>mobile number</label>
            </div>
            <div class="field">
               <input type="text" required name="alternate">
               <label>alternate mobile</label>
            </div>
            
            <div class="field">
               <input type="submit" value="Next">
            </div>
            </div>
         </form>
      </div>

</body>
</html>