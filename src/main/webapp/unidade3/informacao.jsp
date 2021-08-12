<%@ page import="java.util.Date" %>

<h3>Informacoes do servidor: </h3>
<%= application.getServerInfo() %>

<h3>Versao principal da API do servlet: </h3>
<%= application.getMajorVersion() %>

<h3>Informacoes do host: </h3>
<%= request.getRemoteHost() %>

<h3>Informacoes da sessao: </h3>
<%= session.getId() %>

<h3>Data de criacao: </h3>
<%= new Date(session.getCreationTime()) %>

<h3>Data do ultimo acesso a sessao: </h3>
<%= new Date(session.getLastAccessedTime()) %>