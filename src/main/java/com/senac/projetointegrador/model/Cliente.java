package com.senac.projetointegrador.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name ="cliente")
public class Cliente {
	
    @Id
    @Column(name="cpf")
    private String cpf;
    
	@Column(name="nome")
    private String nomeCliente;
	
	@Column(name="cep")
	private String cep;
	
	@Column(name="endereco")
    private String endereco;
	
	@Column(name="numero")
    private Integer numero;
	
	@Column(name="complemento")
    private String complemento;
	
	@Column(name="bairro")
    private String bairro;
	
	@Column(name="cidade")
    private String cidade;
	
	@Column(name="uf")
	private String uf;
	
	@Column(name="email")
    private String email;
	
	@Column(name="data_nasc")
    private String dataNascimento;
	
	@Column(name="sexo")
    private Character sexo;

    public Cliente(String cpf, String nomeCliente, String cep, String endereco, Integer numero, String complemento, String bairro,
            String cidade, String uf, String email, String dataNascimento, Character sexo) {
        this.cpf = cpf;
        this.nomeCliente = nomeCliente;
        this.cep = cep;
        this.endereco = endereco;
        this.numero = numero;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        this.email = email;
        this.dataNascimento = dataNascimento;
        this.sexo = sexo;
    }

    public Cliente() {
    	
    }
    public String getCep() {
		return cep;
	}


	public void setCep(String cep) {
		this.cep = cep;
	}


	public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getNomeCliente() {
        return nomeCliente;
    }
    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }
    public String getEndereco() {
        return endereco;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    public Integer getNumero() {
        return numero;
    }
    public void setNumero(Integer numero) {
        this.numero = numero;
    }
    public String getComplemento() {
        return complemento;
    }
    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }
    public String getBairro() {
        return bairro;
    }
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    public String getCidade() {
        return cidade;
    }
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getDataNascimento() {
        return dataNascimento;
    }
    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
    public Character getSexo() {
        return sexo;
    }
    public void setSexo(Character sexo) {
        this.sexo = sexo;
    }

    
    
}
