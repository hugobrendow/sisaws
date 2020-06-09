package br.com.cloudits.sisaws.service;

import java.util.Collection;
import java.util.TimerTask;

import com.amazonaws.services.ec2.AmazonEC2;
import com.amazonaws.services.ec2.AmazonEC2ClientBuilder;
import com.amazonaws.services.ec2.model.StartInstancesRequest;
import com.amazonaws.services.rds.AmazonRDS;
import com.amazonaws.services.rds.AmazonRDSClientBuilder;
import com.amazonaws.services.rds.model.StartDBInstanceRequest;

public class IniciarService extends TimerTask {
	
	private Collection<String> instanceIds;
	private String databaseId;
	
	public IniciarService(Collection<String> instanceIds, String databaseId) {
		this.instanceIds = instanceIds;
		this.databaseId = databaseId;
	}

	@Override
	public void run() {
		AmazonEC2 ec2 = AmazonEC2ClientBuilder.standard().withRegion("sa-east-1").build();
		AmazonRDS rds = AmazonRDSClientBuilder.standard().withRegion("sa-east-1").build();

		try {
			//System.out.println("\n\n Inicializando Banco de Dados\n\n");
			//StartDBInstanceRequest request2 = new StartDBInstanceRequest().withDBInstanceIdentifier(databaseId);
			//rds.startDBInstance(request2);
						
			//Aguarda 3 minutos para inicializar Máquina de Aplicação
			//Thread.sleep(180000);
			
			System.out.println("\n\n Inicializando Instancias\n\n");
			StartInstancesRequest request = new StartInstancesRequest().withInstanceIds(instanceIds);
			ec2.startInstances(request);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
