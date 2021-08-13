<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<body bgcolor="#FFFFFF">
		<%= new java.util.Date() %>
		<br />
		
		<fmt:formatDate value="<%= new java.util.Date() %>" type="time" />
		<br />
		
		<fmt:formatDate value="<%= new java.util.Date() %>" type="date" />
		<br />

		<c:set var="agora" value="<%= new java.util.Date() %>" />
		
		<p>Hora:
			<strong>
				<fmt:formatDate type="time" value="${agora}" />
			</strong>
		</p>
		
		<p>Dia:
			<strong>
				<fmt:formatDate type="date" value="${agora}" />
			</strong>
		</p>		
		
	</body>
</html>