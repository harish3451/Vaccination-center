
<jsp:include page="home.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>Citizens</h3>

<table border=2>
<tr>
	<td colspan="2" ><h3>${cz.name }</h3></td>
</tr>
<tr>
	<td>ID</td>
	<td>${cz.id }</td>
</tr>
<tr>
	<td>City</td>
	<td>${cz.center.city.city }</td>
</tr>
<tr>
	<td>Number of Vaccines</td>
	<td>${cz.dose.numberOfDose }</td>
</tr>
<tr>
	<td>Vaccination status</td>
	<td>${cz.dose.status }</td>
</tr>
<tr>
	<td>Allocated Vaccination Center</td>
	<td>${cz.center.centerName }</td>
</tr>
</table>