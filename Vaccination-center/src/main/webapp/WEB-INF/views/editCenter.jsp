
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />
<br><br>
<form action="/edit/${vc.id }" method="post">
<table border=2; style=border-collapse:collapse;>
	<tr>
		<th colspan="2">
			<h3>Edit City Hospital</h3>
		</th>
	</tr>
	
	<tr>
	<td> Center Name </td>
	<td> <input type="text" name="center_name" value="${vc.centerName }"/></td>
	</tr>
	<tr>
	<td> Center City</td>
	<td>
	<select name="center_city" >
	<!--  <option value="${vc.city.id }">${vc.city.city }</option>-->
	<c:forEach var="city" items="${city }">
	
		<option value="${city.id }" ${city.id == vc.city.id ? 'selected ="selected"':'' } >${city.city }</option>
		
	</c:forEach>
	</select>	
	</td>
	</tr>
	<tr >
		<td colspan="2" style="text-align: center"><input type="submit" value="submit"></td>
	</tr>
</table>
</form>