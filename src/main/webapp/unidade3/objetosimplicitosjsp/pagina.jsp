<%@ page errorPage="erro.jsp" %>
<%
	//Lanca uma excecao proposital para fins de teste
	int x = 1;
	if ( x == 1)
		throw new RuntimeException("Erro comum!");
%>