<%@ page language="java" %>
<%-- P�gina JSP --%>
<HTML>
<HEAD>
<TITLE> Primeira P�gina JSP</TITLE>
</HEAD>
<BODY>
<% String seuNome = request.getParameter("nome");
StringBuffer seuNomeReverso = new StringBuffer(seuNome)
.reverse();
out.println("<P>Seu Nome "+ seuNome +
" lido de tr�s para frente � "+ seuNomeReverso+"</p>"); %>
</BODY>
</HTML>