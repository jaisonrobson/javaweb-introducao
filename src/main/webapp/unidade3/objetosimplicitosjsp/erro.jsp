<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina de erro geral</title>
</head>
<body>
	<pre>
		<%
			exception.printStackTrace(response.getWriter());
		%>
	</pre>
</body>
</html>