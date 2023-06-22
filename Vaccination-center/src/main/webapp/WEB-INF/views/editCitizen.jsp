
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />
<br><br>
<form action="/editCitizen/${person.id }" method="post">
<table border=2; style=border-collapse:collapse;>
	<tr>
		<th colspan="2">
			<h3>Edit Citizen</h3>
		</th>
	</tr>
	
	<tr>
	<td> Citizen Name </td>
	<td> <input type="text" name="c_name" value="${person.name }"/></td>
	</tr>
	<tr>
	<td> Citizen City</td>
	<td>
	<select name="c_city" >	
		<option value=""  } >${person.center.city.city }</option>
	</select>	
	</td>
	</tr>
	<tr>
	<td>No. Of Doses</td>
	<td>
	
		<select name="c_dose">
			<option value="">None</option>
			<c:forEach var="dose" items="${dose }">
			<option value="${dose.numberOfDose }" ${ dose.numberOfDose == person.dose.numberOfDose ? 'selected="selected"':''}>${dose.numberOfDose}</option>
			</c:forEach>
			
			
		</select>
		</td>
	</tr>
	<tr>
		<td>Vaccination Center</td>
		<td>
			<select name="c_center" >	
		<option value=""   >${person.center.centerName }</option>
	</select>
		</td>
	</tr>
	<tr >
		<td colspan="2" style="text-align: center"><input type="submit" value="submit"></td>
	</tr>
</table>
</form>