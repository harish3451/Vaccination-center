
<jsp:include page="home.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <c:forEach var="person" items="${cs}"> 
 ${person.id}, ${person.name }, ${person.center.city}, ${person.center.id }, ${person.center.centerName } <a >Update</a> <a >Delete</a>
</c:forEach> 