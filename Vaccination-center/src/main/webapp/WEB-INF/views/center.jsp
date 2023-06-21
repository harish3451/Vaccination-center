
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />


<h1>Centers</h1>
<table border=2 style=border-collapse:collapse;>
<tr style="text-align: right">
	<td colspan="4">
	<form action="/addCenter" method="get">	
		<input type="submit" value="Add New Center">
	</form>
	</td>
</tr>
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>City</th>
	<th>Action</th>
</tr>
<c:forEach var="center" items="${vc }">

	<tr>
		<td>${center.id }</td>
		<td>${center.centerName }</td>
		<td>${center.city.city }</td>
		<td>
			View, edit, Delete
		</td>
	</tr>


</c:forEach>
</table>