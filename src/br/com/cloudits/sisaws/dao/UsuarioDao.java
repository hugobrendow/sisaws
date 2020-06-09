package br.com.cloudits.sisaws.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.cloudits.sisaws.models.Contrato;
import br.com.cloudits.sisaws.models.Usuario;

@Repository
public class UsuarioDao {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void adiciona(Usuario usuario) {
		manager.persist(usuario);
	}
	
	public void altera(Usuario usuario) {
		Usuario user = this.buscaPorId(usuario.getId());
		user.setCpf(usuario.getCpf());
		user.setGestor(usuario.getGestor());
		user.setLogin(usuario.getLogin());
		user.setNome(usuario.getNome());
		user.setContrato(usuario.getContrato());
		manager.merge(user);
	}
	
	public List<Usuario> lista() {
        return manager.createQuery("select u from Usuario u").getResultList();
    }

	public List<Contrato> listaContrato() {
        return manager.createQuery("select c from Contrato c").getResultList();
    }
	
	public Contrato buscaContratoId(Long id) {
        return manager.find(Contrato.class, id);
    }
	
    public Usuario buscaPorId(Long id) {
        return manager.find(Usuario.class, id);
    }

    public void remove(Usuario usuario) {
        Usuario usuarioARemover = buscaPorId(usuario.getId());
        manager.remove(usuarioARemover);
    }
    
	public Number quantidadeUsuarios() {
		return manager.createQuery("SELECT COUNT(u) FROM Usuario u", Number.class).getSingleResult();
	}
}
