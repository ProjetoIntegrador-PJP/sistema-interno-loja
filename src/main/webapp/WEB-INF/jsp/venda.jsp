<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.senac.projetointegrador.model.Funcionario, com.senac.projetointegrador.model.Cliente, com.senac.projetointegrador.model.Produto, java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   	<link rel="stylesheet" type="text/css" href="/css/styles.css">
</head>

<style>
section {
    display: none;
    padding: 15px;
}

section.active {
    display: block !important;
}

section .container-section-item {
    width: 80%;
    margin-left: auto;
    margin-right: auto;
}

.ico {
    cursor: pointer;
}

.col-lista-gerenciar {
    display: flex;
}

.col-lista-gerenciar>div {
    padding-right: 15px;
}

/*fabricante*/
#fabricante-table {
    border: 1px solid #dee2e6;
}
</style>
<body>


<% Funcionario funcionario = (Funcionario) request.getAttribute("funcionario");
String usuario = (String) session.getAttribute("usuario");
Cliente cliente = (Cliente) request.getAttribute("cliente");%>
<!--   if (usuario == null || funcionario == null ) {
	//response.sendRedirect("login.jsp?error=2");
	response.sendRedirect("/erroLogin?error=2");
} else {-->


    <div id="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">MIA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active" ref="section-venda">
                        <a class="nav-link" href="#">Venda</a>
                    </li>
                    <li class="nav-item" ref="section-estoque">
                        <a class="nav-link" href="#">Estoque</a>
                    </li>
                    <li class="nav-item" ref="section-clientes">
                        <a class="nav-link" href="#">Clientes</a>
                    </li>
                    <!-- <li class="nav-item">
                  <a class="nav-link disabled" href="#">Disabled</a>
                </li> -->
                </ul>
            </div>
        </nav>
        <section id="section-venda" class="container-section active">
        
            <div class="container-section-item">
            
                <h3>Venda</h3>
                <form action="/buscarVendedor" method="get">
                
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-1 col-form-label">Vendedor</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="id" value="<%= funcionario == null ? "" : funcionario.getNomeFuncionario() %>">
                        
                     
                     
                     
                     
  
                    </div> 
                    <div class="col-sm-1">
                       <button class="btn btn-secondary" id="btn-vendedor"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg></button>
                        
                    </div>
                </div>
             
                </form>
                
                <form action="/buscarCliente" method="post">
                
                 <input type="hidden"  name="id" value="<%= funcionario == null ? "" : funcionario.getId() %>">
                
                
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-1 col-form-label">Cpf cliente</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="cpfCliente" value="<%= cliente == null ? "" : cliente.getNomeCliente() %>">
                    </div>
                    <div class="col-sm-1">
                       <button class="btn btn-secondary" id="btn-cliente"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg></button>
                </div>
                </div>
                </form>
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-1 col-form-label"></label>
                    
                </div>
                

	<form action="pesquisarPorId" method="post">
                <div class="row mb-3">
                
				
                    <label for="colFormLabel" class="col-sm-1 col-form-label">Buscar Produto</label>
                    <div class="col-sm-10">
                    
                    
                    <input type="hidden"  name="id" value="<%= funcionario == null ? "" : funcionario.getId() %>">
                
               			<input type="hidden"  name="cpfCliente" value="<%= cliente == null ? "" : cliente.getCpf()%>">
               			 
               			 
                        <input name="valorIdProd"type="text" class="form-control" id="idProd">
                    </div>
                    <div class="col-sm-1">
                       <button id="pesquisarPorId"class="btn btn-secondary" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg></button>
                        <br/>
        <label for="colFormLabel" class="col-sm-1 col-form-label">Quantidade</label>
        <div class="col-sm-10">
            <input name="quantidade" type="number" class="form-control" id="quantidade-produto">
     
  
    </div>
                        </form>
                </div>
                    
                </div>
                
 
                <div id="venda-table">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">item</th>
                                <th scope="col">Produto</th>
                                <th scope="col">qnt</th>
                                <th scope="col">$ un</th>
                                <th scope="col">$ total</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                        
                        <%
				//Produto produto = (Produto) request.getAttribute("produto");
        		
        		//apagar aqui se nao funcionar
        		
        		 List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
        		
        		//até aqui
        		
				List<Integer> quantidade = (List<Integer>) request.getAttribute("quantidadeSelecionada");%>
		
		
		<% double soma = 0;%>
		
                        <%  if (produtos != null && !produtos.isEmpty()) {
                        	int item = 1;
                        	
                        	for(int i=0; i < quantidade.size(); i++){
                        		
			%>
<tr>	
	<td><%= item++%></td>
   <td> <%= produtos.get(i).getNomeProduto() %> </td>
   
   <td><%=quantidade.get(i) %></td>
   <td> <%= produtos.get(i).getPreco() %> </td>
   <%soma = soma + quantidade.get(i) * produtos.get(i).getPreco(); %>
   <td><%=quantidade.get(i) * produtos.get(i).getPreco() %></td>
</tr>

		<% }%>
                    	<% }
                        request.removeAttribute("produtos");
                        request.removeAttribute("quantidadeSelecionada");
                    	
                    	%>    
                        
                            <!--dados da listagem-->
                        </tbody>
                    </table>
                    <p><strong>Total:</strong> <%=soma%></p>
                  
  	<button type="submit" class="btn btn-primary">Finalizar</button>
                </div>
            </div>
           
        </section>
        <section id="section-estoque" class="container-section">Estoque
        
        <div class="container-section-item">
        <h3>Cadastro de Produtos</h3>
        <form action="cadastrarProduto" method="post">
            <div class="mb-3">
                <label for="referencia" class="form-label">Referência</label>
                <input type="text" class="form-control" id="referencia" name="referencia" required>
            </div>
            <div class="mb-3">
                <label for="nomeProduto" class="form-label">Nome do Produto</label>
                <input type="text" class="form-control" id="nomeProduto" name="nomeProduto" required>
            </div>
            <div class="mb-3">
                <label for="preco" class="form-label">Preço</label>
                <input type="text" class="form-control" id="preco" name="preco" required>
            </div>
            <div class="mb-3">
                <label for="quantidade" class="form-label">Quantidade</label>
                <input type="text" class="form-control" id="quantidade" name="quantidade" required>
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar Produto</button>
        </form>
    </div>
        </section>
        
        
        <section id="section-clientes" class="container-section">Clientes
        <div class="container-section-item">
        <h3>Cadastro de Clientes</h3>
        <form action="cadastrarCliente" method="post">
            <div class="mb-3">
                <label for="cpf" class="form-label">CPF</label>
                <input type="text" class="form-control" id="cpf" name="cpf" required>
            </div>
            <div class="mb-3">
                <label for="nomeCliente" class="form-label">Nome do Cliente</label>
                <input type="text" class="form-control" id="nomeCliente" name="nomeCliente" required>
            </div>
            <div class="mb-3">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" name="cep" required>
            </div>
            <div class="mb-3">
                <label for="endereco" class="form-label">Endereço</label>
                <input type="text" class="form-control" id="endereco" name="endereco" required>
            </div>
            <div class="mb-3">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" name="numero" required>
            </div>
            <div class="mb-3">
                <label for="complemento" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="complemento" name="complemento">
            </div>
            <div class="mb-3">
                <label for="bairro" class="form-label">Bairro</label>
                <input type="text" class="form-control" id="bairro" name="bairro" required>
            </div>
            <div class="mb-3">
                <label for="cidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="cidade" name="cidade" required>
            </div>
            <div class="mb-3">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" id="uf" name="uf" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="dataNascimento" class="form-label">Data de Nascimento</label>
                <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" required>
            </div>
            <div class="mb-3">
                <label for="sexo" class="form-label">Sexo</label>
                <select class="form-control" id="sexo" name="sexo" required>
                    <option value="M">Masculino</option>
                    <option value="F">Feminino</option>
                    <option value="O">Outro</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar Cliente</button>
        </form>
    </div>
        
        </section>
    </div>
    <script type="text/javascript">
    	const link = document.querySelectorAll('.nav-link');

  //criar evento de click em todos os itens do menu
  link.forEach(element => {
      element.addEventListener('click', (event) => {

          event.preventDefault();
          //remove a classe active do menu
          getRemoveClassActive('.nav-item');

          //busca o elemento pai, atraves do elemento filho
          const navItemAtual = event.target.parentNode

          //adiciona a classe active
          navItemAtual.classList.add('active');

          getShowHiddenElementSection(navItemAtual);
      });
  });

  /**
   * Remove a classe [active] do elemento HTML
   * @param {String} ele Recebe uma string, pode ser um nome de uma classe ou um identificador, localiza todos e remove a classe active
   */
  const getRemoveClassActive = (ele) => {
      document.querySelectorAll(ele).forEach(element => {
          element.classList.remove('active');
      });
  }

  /**
   * Funcao responsavel por mostrar e ocultar os elemento section
   * @param {HTMLElement} navItemAtual elemento HTML que contem a referencia de qual section deve ser exibida
   */
  const getShowHiddenElementSection = (navItemAtual) => {
      //remove a classe active dos cantainer do elemento section
      getRemoveClassActive('.container-section');

      const ref = navItemAtual.getAttribute('ref');
      const section = document.getElementById(ref);
      section.classList.add('active');    
  }

  /**
   * ao clicar no link na barra de navegacao,
   * busca o elemento section com o mesmo nome para exibir
   * @param {String} ref atributo de referencia no item do click
   */
  const getApiDadosLista = (ref) =>{
      switch (ref) {
          case 'section-venda':
              //c�digo da se��o fabricante
              break;
      
          default:
              break;
      }
  }
    </script>
    
</body>
</html>