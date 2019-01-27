<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.PrintWriter"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ChatBox-Profile</title>
<style type="text/css">
.container {
border-radius: 25px;
    padding: 16px;
    background-color: #ebede8;
    width: 60%;
    align-items: center;
}
</style>
</head>
<body  background="images\background.jpg">
<%@ include file="header.jsp" %>
<%@ include file="commonbar.jsp" %><br><br>
<% out.print("<center>");
out.print("<div class=\"container\">");
         Date date = new Date();
         out.print( "<font style='color:black'><h2 align = \"center\">" +date.toString()+"</h2></font>");
         out.print("</div>");
         out.print("</center>");
         out.print("<hr>");
      %>
<center>

<%if(session != null){
 if(session.getAttribute("name")!=null){
	 out.print("<div class=\"container\">");
	out.print("<hr>");
	String name=(String)session.getAttribute("name");
	String uname=(String)session.getAttribute("user_id");
	out.print("<b><font style='color:navy'>Welcome "+session.getAttribute("name")+"</font></b>&nbsp;&nbsp;&nbsp;");
	out.print("&nbsp;&nbsp;&nbsp;<b><font style='color:navy'>User id = "+(String)session.getAttribute("user_id")+"</font></b>");
	out.print("<hr>");
	out.print("<marquee SCROLLDELAY=150>");
	out.print("<center><h3><font style='color:black'>User Profile-Basic Information</font></h3></center>");
	out.print("</marquee>");
	out.print("<hr>");%>
	
	
	
	
	
	<%
	out.print("<b><font style='color:blue'> Name - "+session.getAttribute("name")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Gender - "+session.getAttribute("gender")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Date Of Birth - "+session.getAttribute("dob")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Registered Mobile No. - "+session.getAttribute("mobile")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Registered email - "+session.getAttribute("email")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Security Question - "+session.getAttribute("SQues")+"</font></b><br><br>");
	out.print("<b><font style='color:blue'> Security Answer - "+session.getAttribute("SAnswer")+"</font></b><br><br>");
			}
else{
	response.sendRedirect("SignIn.jsp");
}
	}
out.print("<br><br>");
out.println("<a href=\"AdvancedOptions.jsp\">Advanced Options<a>");
out.print("</div>");
%>
</center>

<%@ include file="footer.jsp" %>
</body>
</html>