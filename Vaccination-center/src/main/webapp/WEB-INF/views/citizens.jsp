<jsp:include page="home.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<c:forEach var="person" items="${cs} ">
	
	${person.Name}
</c:forEach>