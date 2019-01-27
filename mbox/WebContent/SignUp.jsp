<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ChatBox-New User Registration</title>
<style type="text/css">
form {
    border: 3px solid #f1f1f1;
}
 input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
     display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
input[type=date]{
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
     display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
select{
    width: 50%;
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
input[type=reset] {
    background-color: #e80914;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
.container {
border-radius: 25px;
    padding: 16px;
    background-color: #ebede8;
    width: 50%;
}
</style>
</head>
<body>
</head>
<body background="images\background.jpg">
<%@ include file="header.jsp" %>
<br><br><br><br>
<center>
<div class="container">
<form action="signup" method="post">
  
  <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Your Name" name="name" required>
  
    <label for="uname"><b>Userid</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pswd" required>
    
    <label for="gender"><b>Gender</b></label><br>
    <select name="gender">
    <option>Male</option>
    <option>Female</option>
    <option>Other</option>
    </select><br>
    
    <label for="dob"><b>Date Of Birth(mm/dd/yyyy)</b></label><br>
    <input type="date" name="dob"><br>
    
    <label for="sQuestion"><b>Select a Security Question</b></label><br>
    <select name="sQuestion">
    <option>What is the name of your Favourite Pet ?</option>
    <option>Which Phone number do remember the most from childhood ?</option>
    <option>What is your favourite color ?</option>
    <option>What is the name of your best friend ?</option>
    </select><br>
    
    <label for="sAnswer"><b>Security Answer</b></label>
    <input type="text" placeholder="Your Security Answer" name="sAnswer" required>
    
    <label for="RegEmail"><b>Alternate Email</b></label>
    <input type="text" placeholder="Enter Any Alternate Email Address" name="RegEmail" required>
    
    <label for="Mobile"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Your 10 digits Mobile Number" name="Mobile" required>
    
    <input type="submit" name="submit" value="Create My Account Now">
    <input type="reset" name="reset" value="Reset All Fields">
</form>
</div>
</center>

<%@ include file="footer.jsp" %>
</body>
</html>