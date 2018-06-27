<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<jsp:include page="header.jsp" />
<body>


	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME' }">
			<jsp:include page="menuhome.jsp" />
		</c:when>

		
</c:choose>

</body>


</html>


