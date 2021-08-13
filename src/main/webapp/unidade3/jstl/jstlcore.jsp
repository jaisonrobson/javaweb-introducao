<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
		<c:forEach var="i" begin="1" end="10" step="1">
			<c:out value="${i}" /> <br/>
		</c:forEach>
	</body>
</html>