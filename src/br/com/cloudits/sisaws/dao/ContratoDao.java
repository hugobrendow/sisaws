package br.com.cloudits.sisaws.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.cloudits.sisaws.models.Contrato;

@Repository
public class ContratoDao {
	
	@PersistenceContext
	private EntityManager manager;

	public Contrato buscaPorId(Long id) {
		return manager.find(Contrato.class, id);
	}
	
	public void altera(Contrato contrato) {
		manager.merge(contrato);
	}

	public List<Contrato> lista() {
		return manager.createQuery("select c from Contrato c").getResultList();
	}

	public void adiciona(Contrato contrato) {
		manager.persist(contrato);
	}

	public void remove(Contrato contrato) {
		manager.remove(contrato);
	}
}
