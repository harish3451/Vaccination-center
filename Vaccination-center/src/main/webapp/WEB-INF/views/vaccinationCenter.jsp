
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="home.jsp" />

<h2>Center Information</h2>
<table border="2" style="width: auto;">
  <tr>
    <td colspan="2" align="center"><h2>${vc.centerName }</h2></td>
  </tr>
  <tr>
    <td>ID</td>
    <td >${vc.id }</td>
  </tr>
  <tr>
    <td >City</td>
    <td >${vc.city.city }</td>
  </tr>
</table>
<hr>

<h2>All Citizens of this center</h2>
<table border="2" style="width: auto;">
<tr>
	<th>ID</th>
	<th>Name</th>
	<th>Action</th>
</tr>
<c:forEach var="v" items="${cz }">
<tr>
	<td>${v.id }</td>
	<td>${v.name}</td>
	<td><a href="#">View</a></td>
</tr>
	
</c:forEach>
</table>