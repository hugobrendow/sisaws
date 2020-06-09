package br.com.cloudits.sisaws.controllers;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.cloudits.sisaws.dao.AgendamentoDao;
import br.com.cloudits.sisaws.dao.ServicoDao;
import br.com.cloudits.sisaws.service.AgendarService;

@Transactional
@Controller
@RequestMapping("/agendamento")
public class AgendamentoController {

	@Autowired
	AgendamentoDao dao;
	
	@Autowired
	ServicoDao servicoDao;
	
	@Autowired
	AgendarService agendarService;

	@RequestMapping("/realizar")
	public String form(Model model) {
		model.addAttribute("contratos", dao.listaContrato());
		model.addAttribute("servicos", dao.listaServico());
		return "form/form-agendamento";
	}

	@RequestMapping("/realizaAgendamento")
	public String form(String servicoId, @RequestParam("dataInicio") String dataInicio, @RequestParam("dataFim") String dataFim) {
		
//		System.out.println("Chamando servico do Schedule para o servico: " + servicoId + "\n" +
//							"Data de Início: " + dataInicio + "\n" +
//							"Data do Fim: " + dataFim);
//		
		String databaseId = servicoDao.pesquisarBancoPorNome(servicoId);
//		
		ArrayList<String> instancesId = (ArrayList<String>) servicoDao.listarServidoresPorNome(servicoId);
				
		// "08-08-2018 11:05:00"
		
		//Cria uma tarefa no servidor para inicializar aplicação
//		agendarService.teste();
		agendarService.agendarInicio(instancesId, databaseId, "09-08-2018 21:42:00");
		
		//Cria uma tarefa no servidor para desligamento da aplicação
		//agendarService.agendarTermino(instancesId, databaseId, dataFim);
		
		return "redirect:listar";
	}

	@RequestMapping("/listar")
	public String listar() {
		return "listar/listar-agendamento";
	}

}
