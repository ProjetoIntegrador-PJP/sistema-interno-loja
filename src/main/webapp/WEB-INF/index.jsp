<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="/css/styles.css">

</head>
<title>Login</title>
<body>

	<div class="container">
		<h2>Informe seu usuário e senha:</h2>
	</div>

	<div class="container">
		<form action="/autenticar" method="post">
			<br> Login: <input type="text" name="id"> <br> <br>
			Senha: <input type="password" name="senha"> <br> <br>
			<input type="submit" value="Entrar"> <br> <br>
		</form>
	</div>



	<div class="container">
		<%
		//String erro = request.getParameter("error");
		String erro = (String) request.getAttribute("error");
		if (erro != null) {
			if (erro.equals("1")) {
				out.println("<p> Usuário ou senha invalida </p>");
			}
		}
		%>
	</div>

</body>
</html>