package br.com.cloudits.sisaws.models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Usuario {

	@Id
	@GeneratedValue
	private long id;
	private String nome;
	private String login;
	private String cpf;
	private String gestor;
	private String password;
	
	@ManyToOne(fetch = FetchType.EAGER,  cascade = CascadeType.ALL)
	private Contrato contrato;
	
	
	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getGestor() {
		return gestor;
	}

	public void setGestor(String gestor) {
		this.gestor = gestor;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	 public Contrato getContrato() {
		 return this.contrato;
	 }
	
	 public void setContrato(Contrato contrato) {
		 this.contrato = contrato;
	 }
}
