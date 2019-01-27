<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
     display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
input[type=submit] {
    background-color: #3068b5;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 30%;
}
.container {
border-radius: 25px;
    padding: 16px;
    border:thick;
    background-color: #ebede8;
    width: 30%;
}
</style>
</head>
<body  background="images\background.jpg">
<%@ include file="header.jsp" %><br>
<center>
<%@ include file="commonbar.jsp" %><br><br>
<h1 style=color:black>Change Password</h1>

<div class="container">
<form action="AdvSectionPasswordChange" method="post">
    <%
    if(session.getAttribute("name")!=null){
    	out.print("<label for=\"NewPass\"><b>Enter Your New Password</b></label><br>");
            out.print("<input type=\"password\" placeholder=\"Enter New Password\" name=\"NewPass\" required><br><br>");
        	out.print("<input type=\"submit\" name=\"submit\" value=\"Change Password\">");
    	}
    else{
    	response.sendRedirect("SignIn.jsp");	
    }%>
</form>
</div>
</center>
</body>
</html>