package br.com.cloudits.sisaws.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.cloudits.sisaws.dao.UsuarioDao;
import br.com.cloudits.sisaws.models.Usuario;
import br.com.cloudits.sisaws.service.UsuarioService;

@Transactional
@Controller
@RequestMapping("/usuario")
public class UsuarioController {
		
	@Autowired
	UsuarioDao dao;
	
	@Autowired
	UsuarioService usuarioService;

	@RequestMapping("/cadastrar")
	public String formUsuario(Model model) {
		model.addAttribute("contratos", dao.listaContrato());
		return "form/form-usuario";
	}

	@RequestMapping("/cadastrarUsuario")
	public String adicionar(Usuario usuario, @RequestParam("contratoId") Long contratoId) {
		usuarioService.salvar(usuario, contratoId);
//		usuario.setContrato(dao.buscaContratoId(contratoId));
//		dao.adiciona(usuario);
		return "redirect:cadastrar";
	}

	@RequestMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("usuarios", dao.lista());
		return "listar/listar-usuario";
	}

	@RequestMapping("/editar")
	public String formEditar(Model model, @RequestParam("codigo") Long id) {
		model.addAttribute("contratos", dao.listaContrato());
		model.addAttribute("usuario", dao.buscaPorId(id));
		return "editar/editar-usuario";
	}

	@RequestMapping("/editarUsuario")
	public String editar(Usuario usuario, RedirectAttributes redirectAttributes,
			@RequestParam("contratoId") Long contratoId) {
		usuario.setContrato(dao.buscaContratoId(contratoId));
		dao.altera(usuario);
		redirectAttributes.addFlashAttribute("editaSucesso", "Usuario alterado com sucesso!");
		return "redirect:listar";
	}

	@RequestMapping("/removerUsuario")
	public String remover(@RequestParam("codigo") Long id) {
		dao.remove(dao.buscaPorId(id));
		return "redirect:listar";
	}
}
