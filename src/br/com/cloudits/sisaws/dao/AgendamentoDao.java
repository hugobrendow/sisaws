package br.com.cloudits.sisaws.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.cloudits.sisaws.models.Agendamento;
import br.com.cloudits.sisaws.models.Contrato;
import br.com.cloudits.sisaws.models.Servico;

@Repository
public class AgendamentoDao {

	@PersistenceContext
	private EntityManager manager;

	public Agendamento buscaPorId(Long id) {
		return manager.find(Agendamento.class, id);
	}

	public List<Agendamento> lista() {
		return manager.createQuery("select a from Agendamento a").getResultList();
	}

	public void adiciona(Agendamento agendamento) {
		manager.persist(agendamento);
	}

	public void altera(Agendamento agendamento) {
		manager.persist(agendamento);
	}

	public void remove(Agendamento agendamento) {
		manager.remove(agendamento);
	}

	public List<Contrato> listaContrato() {
		return manager.createQuery("select c from Contrato c").getResultList();
	}

	public List<Servico> listaServico() {
		return manager.createQuery("select s from Servico s").getResultList();
	}
	
}
