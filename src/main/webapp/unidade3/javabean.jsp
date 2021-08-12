<jsp:useBean id="obj" class="unidade3.Calc"></jsp:useBean>
<%
	int cubo = obj.cubo(5);
	out.println("Cubo de 5 e "+cubo);
%>