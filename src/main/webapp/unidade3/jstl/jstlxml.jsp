<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<html>
	<body>
		<h3>Informacoes: </h3>
		
		<c:import var="clienteInfo" url="http://localhost/4Disciplina/unidade3/jstl/clientes.xml"/>
		
		<x:parse var="output" doc="${clienteInfo}"/>

		<b>CPF</b>:
		<x:out select="$output/clientes/cliente/cpf" />
		<br />
		
		<b>Nome</b>:
		<x:out select="$output/clientes/cliente/nome" />
		<br />
		
		<b>Email</b>:
		<x:out select="$output/clientes/cliente/email" />
		<br />
		
	</body>
</html>