package br.com.cloudits.sisaws.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.cloudits.sisaws.dao.ServidorDao;
import br.com.cloudits.sisaws.models.Servidor;

@Repository
public class ServidorDao {
	
	@PersistenceContext
	private EntityManager manager;

	public Servidor buscaPorId(Long id) {
		return manager.find(Servidor.class, id);
	}

	public List<Servidor> lista() {
		return manager.createQuery("select u from Servidor u").getResultList();
	}

	public void adiciona(Servidor servidor) {
		manager.persist(servidor);
	}

	public void altera(Servidor servidor) {
		manager.merge(servidor);
	}

	public void remove(Servidor servidor) {
		manager.remove(servidor);
	}
	
	public Number quantidadeServidores() {
		return manager.createQuery("SELECT COUNT(s) FROM Servidor s", Number.class).getSingleResult();
	}
}
