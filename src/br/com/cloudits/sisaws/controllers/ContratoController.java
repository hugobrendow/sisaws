package br.com.cloudits.sisaws.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.cloudits.sisaws.dao.ContratoDao;
import br.com.cloudits.sisaws.models.Contrato;

@Transactional
@Controller
@RequestMapping("/contrato")
public class ContratoController {
	
	@Autowired
	ContratoDao dao;
	
	@RequestMapping("/cadastrar")
	public String formCadastro() {
		return "form/form-contrato";
	}
	
	@RequestMapping("/cadastrarContrato")
	public String cadastrar(@Valid Contrato contrato, RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("sucesso", "Produto cadastrado com sucesso!");
		dao.adiciona(contrato);
		return "redirect:cadastrar";
	}
	
	@RequestMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("contratos",dao.lista());
		return "listar/listar-contrato";
	}
	
	@RequestMapping("/removerContrato")
	public String removerContrato(@RequestParam("codigo") Long codigo) {
		dao.remove(dao.buscaPorId(codigo));
		return "redirect:listar";
	}
	
	//Rota
	@RequestMapping("/editar")
	public String formEditar(Model model, @RequestParam("codigo") Long id) {
		model.addAttribute("contrato",dao.buscaPorId(id));
		return "editar/editar-contrato";
	}
	
	//Regra
	@RequestMapping("/editarContrato")
	public String editar(Contrato contrato) {
		dao.altera(contrato);
		return "redirect:listar";
	}
}
