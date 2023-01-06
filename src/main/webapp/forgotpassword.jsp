<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>password</title>
<style>
#mail{
height: 25px;
width: 30%;
font-size: 20px;
}
#sub{
background-color:green;
color: white;
height: 35px;
width: 10%

}
</style>
</head>
<body style="text-align: center; font-size: 25px"> 
<form action="password" method="post">
<h1>ForgotPassword</h1>
Email : <input type="email" name="email" placeholder="Enter email" id="mail"><br><br>
<input type="Submit" value="submit" id="sub">  
</form>
</body>
</html>