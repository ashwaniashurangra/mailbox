<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ChatBox-SignIn</title>
<style type="text/css">
form {
    border: 3px solid #f1f1f1;
}

/* Full-width inputs */
 input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
     display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
input[type=submit] {
    background-color: #af0505;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}
/* Add padding to containers */
.container {
border-radius: 25px;
    padding: 16px;
    border:thick;
    background-color: #ebede8;
    width: 30%;
}
</style>
</head>
<body background="images\background.jpg">


<%@ include file="header.jsp" %><br><br><br><br>
<center>
<br>
<div class="container">
<form action="login" method="post">
    <label for="userName"><b>Username</b></label><br>
    <input type="text" placeholder="Enter Username" name="userName" required><br>
    <label for="password"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="password" required><br><br>
    <input type="submit" name="submit" value="Login"><br><br>
  <p>No Account ? <a href="SignUp.jsp" style="color:dodgerblue">- CREATE ONE NOW -</a>.</p><br>
  <p align="center"><a href="ForgetPassword.jsp" style="color:dodgerblue">Trouble Signing in?</a>.</p>
</form>
</div>
</center>
<br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>