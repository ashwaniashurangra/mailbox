<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password-ChatBox</title>
<style type="text/css">
input[type=submit]{
width: 40%;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
background-color: #3068b5;
}
input[type=text]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
     display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.container {
    padding: 16px;
    border:thin;
    background-color: #ebede8;
    width: 30%;
    height: 40%;
}
</style>
</head>
<body background="images\background.jpg">
<%@ include file="header.jsp" %><br><br><br>
<center>
<br><br><br>
<form action="NextForgetPassword.jsp" method="post">
  <div class="container">
<label for="ForgetPassUserName"><b>Enter Your MailBox E-mail id To Continue</b></label><br><br>
		<input type="text" name="ForgetPassUserName" required>
	    <br>
		<br>
		<input type="submit" name="Submit" value="Next">
	
</div>
</form>
</center>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %><hr>
</body>
</html>