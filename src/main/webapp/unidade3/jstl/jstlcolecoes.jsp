<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<body>
		<jsp:useBean id="colecao" class="unidade3.jstl.Clientes" />
		<c:forEach var="nome" items="${colecao.nomes}">
			<c:out value="${nome}" />
			<br />
		</c:forEach>
	</body>
</html>