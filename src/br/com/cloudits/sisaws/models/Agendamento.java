package br.com.cloudits.sisaws.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Agendamento {

	//Para realizar o agendamento, será necessário um método para validar regra:
	// regra: se existe um agendamento para o servidor sem ser o meu: altera para inativo e desliga
	
	
	@Id
	@GeneratedValue
	private Long id;
	
	@OneToOne
	private Servico servico;
	
	@OneToOne
	private Contrato contrato;

	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dataInicio;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dataFim;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}

	public Contrato getContrato() {
		return contrato;
	}

	public void setContrato(Contrato contrato) {
		this.contrato = contrato;
	}

	public Calendar getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Calendar getDataFim() {
		return dataFim;
	}

	public void setDataFim(Calendar dataFim) {
		this.dataFim = dataFim;
	}

}
