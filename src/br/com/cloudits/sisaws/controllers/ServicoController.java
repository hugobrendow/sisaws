package br.com.cloudits.sisaws.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.cloudits.sisaws.dao.ServicoDao;
import br.com.cloudits.sisaws.models.Servico;
import br.com.cloudits.sisaws.models.Servidor;

@Transactional
@Controller
@RequestMapping("/servico")
public class ServicoController {

	@Autowired
	ServicoDao dao;

	@RequestMapping("/cadastrar")
	public String formCadastrar(Model model) {
		model.addAttribute("servidores", dao.listaServidor());
		model.addAttribute("bancos", dao.listaBanco());
		return "form/form-servico";
	}

	@RequestMapping("/editar")
	public String formEditar(Model model, @RequestParam("codigo") Long id) {
		model.addAttribute("servidores", dao.listaServidor());
		model.addAttribute("bancos", dao.listaBanco());
		model.addAttribute("servico", dao.buscaPorId(id));
		return "editar/editar-servico";
	}

	@RequestMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("servicos", dao.lista());
		return "listar/listar-servico";
	}

	@RequestMapping("/removerServico")
	public String remover(@RequestParam("id") Long codigo) {
		dao.remove(dao.buscaPorId(codigo));
		return "redirect:listar";
	}

	@RequestMapping("/cadastrarServico")
	public String cadastrar(Servico servico, @RequestParam("servidorId") List<Long> idservidores) {
		List<Servidor> servidores = new ArrayList<Servidor>();
		for (Long idservidor : idservidores) {
			servidores.add(dao.buscaServidorPorId(idservidor));
		}
		servico.setServidor(servidores);
		dao.adiciona(servico);
		return "redirect:cadastrar";
	}

}
