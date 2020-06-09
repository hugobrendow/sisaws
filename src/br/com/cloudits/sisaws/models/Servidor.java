package br.com.cloudits.sisaws.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Servidor {

	@Id
	@GeneratedValue
	private Long id;
	private String idAws;
	private String nome;
	private Double preco;

	@ManyToMany(mappedBy="servidor")
	private List<Servico> servico;

	@Enumerated(EnumType.STRING)
	private Tipo tipo;

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

	public String getIdAws() {
		return idAws;
	}

	public void setIdAws(String idAws) {
		this.idAws = idAws;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Servico> getServico() {
		return servico;
	}

	public void setServico(List<Servico> servico) {
		this.servico = servico;
	}
	
	@Override
	public String toString() {
		return this.nome;
	}

}
