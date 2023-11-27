package com.senac.projetointegrador.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "funcionario")
public class Funcionario {
    
	@GeneratedValue(strategy = GenerationType.IDENTITY)  // Chave primaria sendo criada automaticamente	

	@Id
	@Column(name="id")
    private int id;
	
	@Column(name="nome_funcionario")
    private String nomeFuncionario;
	
	@Column(name="funcao")
    private String funcao;
	
	@Column(name="senha")
    private int senha;
    
	public Funcionario() {
		
	}
	
    public Funcionario(int id, String nomeFuncionario, String funcao, int senha) {
        this.id = id;
        this.nomeFuncionario = nomeFuncionario;
        this.funcao = funcao;
        this.senha = senha;
    }
    
    
    
    
    
	public int getId() {
        return id;
    }
    public String getNomeFuncionario() {
        return nomeFuncionario;
    }
    public String getFuncao() {
        return funcao;
    }
    public int getSenha() {
        return senha;
    }
    public void setId(int id) {
        this.id = id;
    }
    public void setNomeFuncionario(String nomeFuncionario) {
        this.nomeFuncionario = nomeFuncionario;
    }
    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }
    public void setSenha(int senha) {
        this.senha = senha;
    }

    
}
