<jsp:useBean id="cliente" class="unidade3.Cliente"></jsp:useBean>
<% 
	cliente.setCpf((long)123456789);
	cliente.setNome("Aleksander");
	cliente.setEmail("estrotnavis@vok.ru");
	request.setAttribute("cliente", cliente);
%>

<h3>Cpf: ${cliente.cpf}</h3>

<h3>Nome: ${cliente.nome}</h3>

<h3>Email: ${cliente.email}</h3>