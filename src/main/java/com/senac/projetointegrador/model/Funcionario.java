package com.senac.projetointegrador.model;

public class Funcionario {
    
    private int id;
    private String nomeFuncionario;
    private String funcao;
    private int senha;
    
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
