<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message Recovery-ChatBox</title>
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
<body background="images\background.jpg">
<%@ include file="header.jsp" %><br><br><br>
<%
String usrid=(String) session.getAttribute("user_id");
if(usrid==null){
	response.sendRedirect("SignIn.jsp");
}
%>
<h2 align="center">Advanced Options</h2>
<center>
<img align="middle" alt="File_Recovery_Logo" src="images\recovery.gif" width="300"height="300"><br><br>

<div class="container">
<a href="DeleteRecov.jsp">CLICK HERE TO RECOVER YOUR DELETED MESSAGES</a><br><br>
<a href="AdvSectionPassword.jsp">CLICK HERE TO CHANGE YOUR PASSWORD</a><BR><BR>
<a href="Gmail.jsp">SEND IMPORTANT GMAIL MESSAGES</a>

</div>
</center>


<%@ include file="footer.jsp" %>
</body>
</html>