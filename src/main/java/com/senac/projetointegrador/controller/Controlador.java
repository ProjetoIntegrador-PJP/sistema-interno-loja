package com.senac.projetointegrador.controller;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.senac.projetointegrador.dao.FuncionarioRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.senac.projetointegrador.model.Funcionario;

@Controller
public class Controlador {

    @Autowired
    private FuncionarioRepository dao;

    @GetMapping("/")
	public String login() {
		return "index.jsp";
	}
    
    @GetMapping("/autenticar")
	public String autenticar(HttpServletRequest request,
			@RequestParam("id") int id,
			@RequestParam("senha") String senha,
			Model model) {	

        Optional<Funcionario> func = dao.findById(Integer.valueOf(id));
        Optional<Funcionario> senhaFunc = dao.findById(Integer.valueOf(senha));

		if (func.equals(id) && senha.equals(senhaFunc)) {	
			HttpSession session =  request.getSession(true);
			session.setMaxInactiveInterval(60);			
			session.setAttribute("usuario", id);
			return "redirect:/listarAlunos";

		} else {			
			model.addAttribute("error","1");
			return "login";
		}	
	}
		

    @GetMapping("/erroLogin")
	public String erroLogin(@RequestParam("error") String erro,  Model model)  {	
		
		
		if (erro.equals("1")) {
			model.addAttribute("error","1");
			return "login";
			
		} else if (erro.equals("2")) {
			model.addAttribute("error","2");
			return "login";
		}
		
        return "login";				
	}
}
