
<div style="border: 2px;border-style: solid;width: 400px;padding-left: 20px">
<h1>Admin Registration</h1>

<h3>Registration</h3>

<%if(request.getAttribute("register") != null) {%>
<span style="color:red">Please register first</span>
<%} %><br>
<form action ="/registration" method="post">
Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type= "text" name="username">
<br><br>
Email &nbsp;&nbsp;&nbsp;&nbsp; : <input type= "email" name="email"><br><br>
Password : <input type= "password" name="password"><br><br>
<input type="submit" value="Register">
</form></div>