
<jsp:include page="home.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>Citizens</h3>

<table border=2>
<tr>
	<td colspan="7" align="right"><a href="/addCitizen"><button>Add New Citizens</button></a></td>
</tr>
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>City</th>
	<th>No.Of Doses</th>
	<th>Vaccination Status</th>
	<th>Vaccination Center</th>
	<th>Action</th>
</tr>
<% int i=0; %>
<c:forEach var="person" items="${cs}"> 
<tr>
<% i++; %>
	<td>${person.id}</td>
	<td>${person.name }</td>
	<td>${person.center.city.city}</td>
	<td>${person.dose.numberOfDose }</td>
	<td>${person.dose.status }</td>
	<td>${person.center.centerName }</td>
	<td style="text-align: center;">
			<a href="/viewCitizen/${person.id }" ><button>View</button></a>
			<a href="/editCitizen/${person.id }"><button>Edit</button></a>
			<a href="/deleteCitizen/${person.id }"><button>Delete</button></a>
		</td>
</tr>
</c:forEach> 
<tr>
	<td colspan="7" style="text-align: center;"><b>Total <%=i %> Citizens Found</b></td>
</tr>
</table>