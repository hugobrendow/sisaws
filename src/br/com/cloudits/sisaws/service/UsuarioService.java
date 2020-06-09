package br.com.cloudits.sisaws.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.com.cloudits.sisaws.dao.UsuarioDao;
import br.com.cloudits.sisaws.models.Usuario;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioDao dao;
	
	@Transactional(propagation = Propagation.REQUIRED)
	public void salvar(Usuario usuario, Long contratoId) {
		usuario.setContrato(dao.buscaContratoId(contratoId));
		dao.adiciona(usuario);
	}
	
//	@Transactional(propagation = Propagation.REQUIRED)
//	public Usuario alterar(Usuario usuario) {
//		Usuario user = dao.buscaPorId(usuario.getId());
//		user.setCpf(usuario.getCpf());
//		user.setGestor(usuario.getGestor());
//		user.setLogin(usuario.getLogin());
//		user.setNome(usuario.getNome());
//		user.setContrato(usuario.getContrato());
//		return usuario;
//	}
}
