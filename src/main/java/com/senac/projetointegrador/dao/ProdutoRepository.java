package com.senac.projetointegrador.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.senac.projetointegrador.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Integer>{

}
