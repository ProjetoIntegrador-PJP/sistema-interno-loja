package com.senac.projetointegrador.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "produtos")
public class Produto {
	
	@Id
	@Column(name="referencia")
    private Integer referencia;
	
	@Column(name="nome")
    private String nomeProduto;
	
	@Column(name="preco")
    private Double preco;
	
	@Column(name="quantidade")
    private Integer quantidade;

    public Produto(Integer referencia, String nomeProduto, Double preco, Integer quantidade) {
        this.referencia = referencia;
        this.nomeProduto = nomeProduto;
        this.preco = preco;
        this.quantidade = quantidade;
    }
    
    public Produto() {
    	
    }
    
    public Integer getReferencia() {
        return referencia;
    }
    public void setReferencia(Integer referencia) {
        this.referencia = referencia;
    }
    public String getNomeProduto() {
        return nomeProduto;
    }
    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }
    public Double getPreco() {
        return preco;
    }
    public void setPreco(Double preco) {
        this.preco = preco;
    }
    public Integer getQuantidade() {
        return quantidade;
    }
    public void setQuantidade(Integer quantidade) {
        this.quantidade = quantidade;
    }

}
