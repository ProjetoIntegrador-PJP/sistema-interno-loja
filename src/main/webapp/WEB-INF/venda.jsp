<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <nav>
        <h1>Vendas</h1>
       </nav>
         <div id="aba-vendas">
             <div id="aba-venda">
                     <div> 
                         <div>
                             <label for="vendedor">Vendedor</label>
                             <input type="text" name="vendedor" id="vendedor">
                             <button class="btn btn-secondary">
 
                                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                     <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                   </svg>
                             </button>
                             <br>
                             <label for="cpf-cliente">CPF Cliente</label>
                             <input type="text" name="cpf-cliente" id="cpf-cliente">
                             <button class="btn btn-secondary">
 
                                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                     <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                   </svg>
                             </button>
                         </div>
     
                         <div>
                             <div>
     
                                 <label for="ref">Referência</label>
                                 <input type="text" name="ref" id="ref">
                                 <label for="quantidade">qtd</label>
                                 <input type="number" name="quantidade" id="quantidade">
                                 <button class="btn btn-secondary">
 
                                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                         <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                       </svg>
                                 </button>
                             </div>
                             <div id="cupom">
                                 <table class="table">
                                     <thead>
                                       <tr>
                                         <th scope="col">item</th>
                                         <th scope="col">Produtos</th>
                                         <th scope="col">qtn</th>
                                         <th scope="col">$ UN</th>
                                         <th scope="col">$ TOTAL</th>
                                       </tr>
                                     </thead>
                                     <tbody>
                                       <tr>
                                         <th scope="row">1</th>
                                         <td>Calça</td>
                                         <td>1</td>
                                         <td>23,99</td>
                                         <td>23,99</td>
                                       </tr>
                                       <tr>
                                         <th scope="row">2</th>
                                         <td>Blusa</td>
                                         <td>2</td>
                                         <td>20,00</td>
                                         <td>40,00</td>
                                       </tr>
                                       <tr>
                                         <th scope="row">3</th>
                                         <td>Camiseta</td>
                                         <td>1</td>
                                         <td>23,99</td>
                                         <td>23,99</td>
                                       </tr>
                                       
                                     </tbody>
                                   </table>
                             </div>
                         </div>
                     </div>
                     <div> </div>
     
                 <section id="aba-pagamento" class="display">
     
                 </section>
             </div>
 
             <div id="botoes" class="d-flex flex-column justify-content-around">
                 <button type="button" class="btn btn-primary">Clientes</button>
                 
                 <button type="button" class="btn btn-primary">Estoque</button>
                
                 <button type="button" class="btn btn-primary">Pagamento</button>
                 <button type="button" class="btn btn-primary">Limpar</button>
                 <button type="button" class="btn btn-primary">Cancelar</button>
                 <button type="button" class="btn btn-primary">Consultar preço</button>
                 
             </div>
         </div >
 
         <div id="aba-clientes" class="display">
             <section>
 
             </section>
         </div>
 
         <div id="aba-estoque" class="display">
             <section>
                 
             </section>
         </div>
     
             <footer class="d-flex justify-content-between align-items-center">
                 <div class="d-flex flex-column" >
                     <div id="hora" class="text-light"></div>
                     <div id="data" class="text-light"></div>
                 </div>
                 <div>
                     <button type="button" class="btn btn-primary">Sair</button>
                 </div>
             </footer> 
</body>
</html>