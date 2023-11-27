package com.senac.projetointegrador.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.senac.projetointegrador.model.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, String>{

	
	List<Cliente> findByNomeCliente(String nomeCliente);
}
