<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<h1>Login ${name}</h1>

<form action ="/login" method="post">
Username <input type='text' name="username"><br><br>
Password <input type="password" name = "password"><br><br>

<input type="submit" value = "Login">&nbsp;	&nbsp;	&nbsp;	
</form>
<form action="/register">
<input type="submit" value="Register"  >
</form>
