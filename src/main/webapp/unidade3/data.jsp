<%@ page language="java" %>
<%@ page import="java.time.LocalDate" %>
<html>
<body>
<p>A data atual e ==> <%= LocalDate.now() %></p>
<p>2x5 = <% out.println(2*5); %></p>
</body>
</html>