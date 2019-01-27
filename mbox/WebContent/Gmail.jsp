<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Mails from Gmail</title>
<style type="text/css">
input[type=submit] {
    background-color: #af0505;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}
input[type=password],[type=text] {
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
    width: 60%;
    border-radius: 25px;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %><br><br><br>
<center>
<h3>Send important Mails Through GMail</h3>

<img alt="File_Recovery_Logo" src="images\gmail.png" width="500"height="250"><br><br>


<div class="container">
<form action="mail" method="post">
<label for="to"><b>To</b></label><br>
<input type="text" name="to"/><br/>
<label for="subject"><b>Subject</b></label><br>
<input type="text" name="subject"/><br/>
<label for="message"><b>Message</b></label><br>
<input type="text" name="message"/><br/>
<label for="user"><b>Your Gmail Email id</b></label><br>
<input type="text" name="user"><br/>
<label for="password"><b>Gmail Password</b></label><br>
<input type="password" name="pass"/><br/>
<input type="submit" value="send" />
</form>
</div>
<h3>If you are unable to send mails,Then:-<br>
1>Disable two step Verification.<br>
2>Enable account access in less secured applications.<br>
</h3>
</center>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>