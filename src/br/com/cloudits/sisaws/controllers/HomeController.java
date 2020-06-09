package br.com.cloudits.sisaws.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cloudits.sisaws.dao.ServicoDao;
import br.com.cloudits.sisaws.dao.ServidorDao;
import br.com.cloudits.sisaws.dao.UsuarioDao;

@Controller
public class HomeController {
	
	@Autowired
	ServicoDao servicoDao;
	
	@Autowired
	ServidorDao servidorDao;
	
	@Autowired
	UsuarioDao usuarioDao;
	
	@RequestMapping("/home")
	public String index(Model model) {
		model.addAttribute("quantidadeServicos", servicoDao.quantidadeServicos());
		model.addAttribute("quantidadeUsuarios", usuarioDao.quantidadeUsuarios());
		model.addAttribute("quantidadeServidores", servidorDao.quantidadeServidores());
		return "index";
	}
}
