package br.com.cloudits.sisaws.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;


@Entity
public class Servico {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name="servico")
	private List<Servidor> servidor;
	private String nome;

	@OneToOne
	@JoinColumn(name="servico")
	private Agendamento agendamento;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Servidor> getServidor() {
		return servidor;
	}

	public void setServidor(List<Servidor> servidor) {
		this.servidor = servidor;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
