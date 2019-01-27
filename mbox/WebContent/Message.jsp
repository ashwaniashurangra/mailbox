<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.PrintWriter"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CHATBOX-MultiMedia Message Authentication</title>
<style type="text/css">
.container {
border-radius: 25px;
    padding: 16px;
    background-color: #ebede8;
    width: 50%;
    align-items: center;
}
</style>
</head>
<body  background="images\background.jpg">
<%@ include file="header.jsp" %><br><br><br><br>
<% out.print("<center>");
out.print("<div class=\"container\">");
         Date date = new Date();
         out.print( "<font style='color:black'><h2 align = \"center\">" +date.toString()+"</h2></font>");
         out.print("</div>");
         out.print("</center>");
         out.print("<hr>");
      %>
      <br><br><br><br>
<center>
<div class="container">
<center>
        <h3><%=request.getAttribute("Message")%></h3>
<a href="inbox">Click here to continue</a>
    </center>
</div>
</center>


<%@ include file="footer.jsp" %>
</body>
</html>