package br.com.cloudits.sisaws.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.cloudits.sisaws.dao.ServidorDao;
import br.com.cloudits.sisaws.models.Servidor;

@Transactional
@Controller
@RequestMapping("/servidor")
public class ServidorController {
	
	@Autowired
	ServidorDao dao;
	
	//Rotas
	@RequestMapping("/cadastrar")
	public String form() {
		return "form/form-servidor";
	}

	@RequestMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("servidores", dao.lista());
		return "listar/listar-servidor";
	}
	
	@RequestMapping("/editar")
	public String editar(Model model, @RequestParam("id") Long id) {
		model.addAttribute("servidor", dao.buscaPorId(id));
		return "editar/editar-servidor";
	}
	
	
	//Regras
	@RequestMapping("/cadastrarServidor")
	public String adicionar(Servidor servidor, RedirectAttributes redirectAttributes) {
		dao.adiciona(servidor);
		redirectAttributes.addFlashAttribute("sucesso", "Servidor cadastrado com sucesso!");
		return "redirect:listar";
	}

	@RequestMapping("/editarServidor")
	public String editar(Servidor servidor, RedirectAttributes redirectAttributes) {
		dao.altera(servidor);
		redirectAttributes.addFlashAttribute("editaSucesso", "Servidor alterado com sucesso!");
		return "redirect:listar";
	}
	
	@RequestMapping("/removerServidor")
	public String removerServidor(@RequestParam("id") Long id) {
		dao.remove(dao.buscaPorId(id));
		return "redirect:listar";
	}
}
