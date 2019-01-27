<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ChatBox-Compose</title>
<style type="text/css">
form {
    border: 3px solid #f1f1f1;
}
input[type=text],textarea[name="Message"],input[type=file]{
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
    width: 100%;
}
.container {
    padding: 16px;
    border:thin;
    background-color: #ebede8;
    width: 30%;
    height: 40%;
    border-radius: 25px;
}
</style>
</head>
<body  background="images\background.jpg">
<%@ include file="header.jsp" %>
<%@ include file="commonbar.jsp" %>
<center>
<% 
out.print("<div class=\"container\">");
         Date date = new Date();
         out.print( "<font style='color:black'><h2 align = \"center\">" +date.toString()+"</h2></font>");
         out.print("</div>");
         out.print("<hr>");
         out.print("<br>");
      %>
      
<%if(session != null){
 if(session.getAttribute("name")!=null){
	 out.print("<div class=\"container\">");
	 out.print("<center><h3>Compose Message</h3></center>");
	 out.print("<form action=\"ComposeMessage\" method=\"post\">");
	 out.print("<label for=\"To\"><b>To</b></label>");
	 out.print("<br>");
	 out.print("<input type=\"text\" placeholder=\"Receiver's user-id\" name=\"to\" required>");
	 out.print("<br>");
	 out.print("<label for=\"Subject\"><b>Subject</b></label>");
	 out.print("<br>");
	 out.print("<input type=\"text\" placeholder=\"Subject\" name=\"Subject\">");
	 out.print("<br>");
	 out.print("<label for=\"Message\"><b>Message</b></label>");
	 out.print("<br>");
	 out.print("<textarea rows=\"6\" cols=\"50\" name=\"Message\" placeholder=\"Your Message\" required>");
	 out.print("</textarea>");
	 out.print("<br>");
	 
	
	 
	 
	 out.print("<input type=\"submit\" name=\"submit\" value=\"SEND MESSAGE\">");
	 out.print("</form>");
	 out.print("<br>");
 }
 else{
		response.sendRedirect("SignIn.jsp");
	}
 }
 %>
</center>
 <br>
 <br>   
<%@ include file="footer.jsp" %>
</body>
</html>