<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<body>
		<c:set var="string1" value="Jason robg" />
		<c:set var="string2" value="Viciado em jogos eletronicos" />
		<p>Tamanho da string (1): ${fn:length(string1)} </p>
		<p>Tamanho da string (2): ${fn:length(string2)} </p>		
	</body>
</html>