<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Pagina de formulario</title>
<link rel="stylesheet" type="text/css" href="lib/css/estilo.css" />
</head>
<body>
	<form name="form" action="http://localhost/4Disciplina/unidade3/autenticacao.jsp" method="post">
		CPF: <br />
		<input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}\-\d{2}" maxlength="14" title="Digite o cpf no formato: XXX.XXX.XXX-XX" required/> <br />
		Senha: <br/>
		<input type="password" name="senha" /> <br />
		<input type="submit" value="Entrar" />
	</form>
	<p>${mensagem}</p>
</body>
</html>