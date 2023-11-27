package com.senac.projetointegrador.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.senac.projetointegrador.model.Funcionario;
import java.util.List;


@Repository
public interface FuncionarioRepository extends JpaRepository<Funcionario, Integer> {
	
	List<Funcionario> findByNomeFuncionario(String nomeFuncionario);
	List<Funcionario> findBySenha(int senha);
}
