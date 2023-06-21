
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
<% int i=0; %>
<c:forEach var="center" items="${vc }">

	<tr>
		<% i++; %>
		<td>${center.id }</td>
		<td>${center.centerName }</td>
		<td>${center.city.city }</td>
		<td style="text-align: center;">
			<a href="/viewCenter/${center.id }" ><button>View</button></a>
			<a href="/editCenter/${center.id }"><button>Edit</button></a>
			<a href="/deleteCenter/${center.id }"><button>Delete</button></a>
		</td>
	</tr>


</c:forEach>

<tr>
	<td colspan="4" style="text-align: center;"><b>Total <%=i %> Vaccination Centers Found</b></td>
</tr>
</table>