<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="/css/styles.css">

<style>
.container {
	display: flex;
	margin-top: 80px;
	justify-content: center;
	align-items: center;
}

.imagem-miniatura {
	position: absolute;
	width: 150px; /* Ajuste o tamanho conforme necessário */
	left: 500px;
}
</style>

<style>
.posicao-especifica {
	position: absolute;
	top: 0px; /* Define a posição do topo em pixels */
	left: 70px; /* Define a posição da esquerda em pixels */
}
</style>


</head>
<title>Login</title>
<body>


	<!-- Exemplo de inclusão de imagem -->
	<img class="imagem-miniatura" src="/images/senac.png" alt="Minha Imagem">

	<div class="container">
		<h2>Informe seu usuário e senha:</h2>
	</div>

	<div class="container">
		<form action="/autenticar" method="post">
			<br> Login: <input type="text" name="id"> <br> <br>
			Senha: <input type="password" name="senha"> <br> <br>
			<input type="submit" value="Efetuar Login"> <br> <br>
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

			if (erro.equals("2")) {
				out.println("<p> Sessão Encerrada, faça login novamente </p>");
			}
		}
		%>
	</div>


	<div class="container mt-5">
		<h1>Bem-vindo ao meu Projeto Spring com Bootstrap</h1>
		<p>Este é um exemplo de JSP usando Bootstrap.</p>
		<button class="btn btn-primary">Botão Bootstrap</button>
	</div>
	
	  <!-- Incluindo arquivo JavaScript -->
  <script src="/js/meu_script.js"></script>
  
   <!-- Adicionando um botão para chamar a função -->
   <div class="container mt-5">
  <button onclick="meuFuncao()">Clique para Chamar a Função</button>
   </div>

	<!--  <div class="container">
        	<img class="imagem-miniatura" src="/foto${aluno.nome}.png" alt="Miniatura" >  	
	</div>-->


	  <a href="teste">Ir para Página de teste</a>

<div class="meu-div">
    Passe o mouse aqui
  </div>


</body>
</html>