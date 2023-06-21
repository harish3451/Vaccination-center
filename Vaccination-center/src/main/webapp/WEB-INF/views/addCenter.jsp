
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />
<br><br>
<form action="addCenter" method="post">
<table border=2; style=border-collapse:collapse;>
	<tr>
		<th colspan="2">
			<h3>Add New Vaccination Center</h3>
		</th>
	</tr>
	
	<tr>
	<td> Center Name </td>
	<td> <input type="text" name="center_name" /></td>
	</tr>
	<tr>
	<td> Center City</td>
	<td>
	<select name="center_city" >
	<c:forEach var="city" items="${city }">
		<option value="${city.id }">${city.city }</option>
	</c:forEach>
	</select>	
	</td>
	</tr>
	<tr >
		<td colspan="2" style="text-align: center"><input type="submit" value="submit"></td>
	</tr>
</table>
</form>