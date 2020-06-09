package br.com.cloudits.sisaws.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Timer;

import org.springframework.stereotype.Service;

@Service
public class AgendarService {
	
	public void teste() {
		System.out.println("TESTE\n\n\n\n\n"); 
	}
	
	public void agendarInicio(Collection<String> instanceIds, String databaseId, String dataInicio) {
		System.out.println("AgendarInicio");
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		try {
			//06-06-2018 10:22:00
			System.out.println(dataInicio);
			Date date = df.parse(dataInicio);
			System.out.println(date);
			
			System.out.println("Criando schedule para Inicialização dos servidores "+ instanceIds);
			IniciarService task = new IniciarService(instanceIds, databaseId);
			new Timer().schedule(task, date);
			System.out.println("AgendarInicio");
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	public void agendarTermino(Collection<String> instanceIds, String databaseId, String dataFim) {
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		try {
			System.out.println(dataFim);
			Date date2 = df.parse(dataFim);
			System.out.println(date2);
			
			System.out.println("Criando Schedule para Desligamento dos servidores: "+ instanceIds);
			new Timer().schedule(new DesligarService(instanceIds, databaseId), date2);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}
	
	
}
