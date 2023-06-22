
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />
<br><br>
<form action="addCitizen" method="post">
<table border=2; style=border-collapse:collapse;>
	<tr>
		<th colspan="2">
			<h3>Add New Citizen</h3>
		</th>
	</tr>
	
	<tr>
	<td> Citizen Name </td>
	<td> <input type="text" name="name" /></td>
	</tr>
	<tr>
		<td>Hospital</td>
		<td>
			<h1>${ci.id }</h1>
			<select name="center" >
			<c:forEach var="ce" items="${vc }">
				<option value="${ce.id }"  >${ce.centerName} (${ce.city.city })</option>
			</c:forEach>
		</td>
	</tr>
	<tr >
		<td colspan="2" style="text-align: center"><input type="submit" value="submit"></td>
	</tr>
</table>
</form>