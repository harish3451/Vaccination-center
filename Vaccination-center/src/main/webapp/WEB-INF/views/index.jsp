<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div style="border: 2px;border-style: solid;width: 400px;padding-left: 20px">
<h1>Login </h1>
<%if(request.getAttribute("name") != null) {%>
<span style="color:red">Wrong Password</span>
<%} %>
<form action ="/login" method="post">
Username <input type='text' name="username"><br><br>
Password &nbsp;<input type="password" name = "password"><br><br>

<input type="submit" value = "Login">&nbsp;	&nbsp;	&nbsp;	<a href="/register"><button>Register</button></a>
</form>
</div>
