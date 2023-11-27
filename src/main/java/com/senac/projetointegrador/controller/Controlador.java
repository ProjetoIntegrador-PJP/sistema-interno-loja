package com.senac.projetointegrador.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.senac.projetointegrador.dao.ClienteRepository;
import com.senac.projetointegrador.dao.FuncionarioRepository;
import com.senac.projetointegrador.dao.ProdutoRepository;
import com.senac.projetointegrador.model.Cliente;
import com.senac.projetointegrador.model.Funcionario;
import com.senac.projetointegrador.model.Produto;

import jakarta.servlet.http.HttpSession;

@Controller
public class Controlador {

    @Autowired
    private FuncionarioRepository daof;
    
    @Autowired
    private ClienteRepository daoc;
    
    @Autowired
    private ProdutoRepository daop;
    
    List<Produto> produtos = new ArrayList<>();
    HttpSession session;

    @GetMapping("/")
	public String login() {
		return "index";
	}

	@GetMapping("/venda")
	public String venda() {
		

		return "venda";
	}
    
	@GetMapping("/autenticar")
	public String autenticar(@RequestParam("id") String id,
			@RequestParam("senha") String senha,
			Model model) {	

        //Optional<Funcionario> func = daof.findById(Integer.parseInt(id));
        //Optional<Funcionario> senhaFunc = daof.findById(Integer.valueOf(senha));

        if (id.equals("2301") && senha.equals("1234") && id != null && !id.isEmpty() && !senha.isEmpty()) {	
	
			return "redirect:/venda";

		} else {			
			model.addAttribute("error","1");
			return "index";
		}	
	}
	

    @GetMapping("/erroLogin")
	public String erroLogin(@RequestParam("error") String erro,  Model model)  {	
		
		
		if (erro.equals("1")) {
			model.addAttribute("error","1");
			return "index";
			
		} else if (erro.equals("2")) {
			model.addAttribute("error","2");
			return "index";
		}
		
        return "index";				
	}
    
    @GetMapping("/buscarVendedor")
    public String buscarVendedor(@RequestParam("id") String id, Model model) {
    	
    	Optional<Funcionario> funcionario = daof.findById(Integer.parseInt(id));
    	
    			
		model.addAttribute("funcionario", funcionario.get());
		
		return "venda";
	}
    
    @PostMapping("/buscarCliente")
    public String buscarCliente(@RequestParam("cpfCliente") String cpf,  @RequestParam("id") String id, Model model) {
    	
    	
    	
    	Optional<Funcionario> funcionario = daof.findById(Integer.parseInt(id));
    	Optional<Cliente> cliente = daoc.findById(cpf);   	
    			
		model.addAttribute("cliente", cliente.get());
		model.addAttribute("funcionario", funcionario.get());
		
		
		return "venda";
	}
    
    
    
    @PostMapping("pesquisarPorId")
    public String pesquisarporId(
        @RequestParam("valorIdProd") String valorIdProd,
       @RequestParam("quantidade") Integer quantidade, @RequestParam("cpfCliente") String cpf,  @RequestParam("id") String id,
       Model model,
       HttpSession session) {
    	
    	Optional<Funcionario> funcionario = daof.findById(Integer.parseInt(id));
    	Optional<Cliente> cliente = daoc.findById(cpf);   	
    			
		model.addAttribute("cliente", cliente.get());
		model.addAttribute("funcionario", funcionario.get());
    	
    	int idProduto = Integer.parseInt(valorIdProd);
        Optional<Produto> produtoOptional = daop.findById(idProduto);
        int quantidadeSelecionada = quantidade;
     
        
        
        produtoOptional.ifPresent(prod -> {
     	   
     	   
           List<Produto> produtosPesquisados = (List<Produto>) session.getAttribute("produtos");
           List<Integer> listaQuantidadePesquisados = (List<Integer>) session.getAttribute("quantidades");
           if (produtosPesquisados == null) {
               produtosPesquisados = new ArrayList<>();
               listaQuantidadePesquisados = new ArrayList<>();               
           }
            else {
            	
            	
             	
//            	produtosPesquisados.clear();
          }
           
           produtosPesquisados.add(prod);
       	   listaQuantidadePesquisados.add(quantidade);
           session.setAttribute("produtos", produtosPesquisados);
           session.setAttribute("quantidades", listaQuantidadePesquisados);
            
         });
  
         List<Produto> produtos = (List<Produto>) session.getAttribute("produtos");
         List<Integer> quantidades = (List<Integer>) session.getAttribute("quantidades");


         
         
        if (!produtos.isEmpty()) {
            model.addAttribute("produtos", produtos);
            model.addAttribute("quantidadeSelecionada", quantidades);
            System.out.println("Produto encontrado: " + produtos.get(0).toString());
       } else {
             // Adicione uma mensagem de erro ao modelo se o produto não for encontrado
            model.addAttribute("erro", "Produto não encontrado");
        }
 
       return "venda";
   }
    
    
    
}










