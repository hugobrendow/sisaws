package br.com.cloudits.sisaws.dao;

import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.cloudits.sisaws.models.Servico;
import br.com.cloudits.sisaws.models.Servidor;

@Repository
public class ServicoDao {

	@PersistenceContext
	private EntityManager manager;

	public Servico buscaPorId(Long id) {
		return manager.find(Servico.class, id);
	}

	public Servidor buscaServidorPorId(Long id) {
		return manager.find(Servidor.class, id);
	}

	public List<Servico> lista() {
		return manager.createQuery("select s from Servico s").getResultList();
	}

	public void adiciona(Servico servico) {
		manager.persist(servico);
	}

	public void altera(Servico servico) {
		manager.merge(servico);
	}

	public void remove(Servico servico) {
		manager.remove(servico);
	}

	public List<Servidor> listaServidor() {
		return manager.createQuery("select s from Servidor s where s.tipo = 'EC2'").getResultList();
	}

	public List<Servidor> listaBanco() {
		return manager.createQuery("select s from Servidor s where s.tipo = 'RDS'").getResultList();
	}

	public Collection<String> listarServidoresPorNome(String parametro) {
		Query query = manager.createQuery("select srv.idAws from Servidor srv join srv.servico svc where svc.nome like :pServico and srv.tipo like 'EC2'");
		query.setParameter("pServico", parametro);
		return query.getResultList();
	}
	
	public String pesquisarBancoPorNome(String parametro) {
		try {
			Query query = manager.createQuery("select srv.idAws from Servidor srv join srv.servico svc where svc.nome like :pServico and srv.tipo like 'RDS'");
			query.setParameter("pServico", parametro);
			return (String) query.getSingleResult();
		} catch (NoResultException e) {
			return "";
		}
	}

	public Number quantidadeServicos() {
		return manager.createQuery("SELECT COUNT(s) FROM Servico s", Number.class).getSingleResult();
	}
}
