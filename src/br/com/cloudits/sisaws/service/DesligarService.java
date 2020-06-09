package br.com.cloudits.sisaws.service;

import java.util.Collection;
import java.util.TimerTask;

import com.amazonaws.services.ec2.AmazonEC2;
import com.amazonaws.services.ec2.AmazonEC2ClientBuilder;
import com.amazonaws.services.ec2.model.StopInstancesRequest;
import com.amazonaws.services.rds.AmazonRDS;
import com.amazonaws.services.rds.AmazonRDSClientBuilder;
import com.amazonaws.services.rds.model.StopDBInstanceRequest;

public class DesligarService extends TimerTask {
	
	private Collection<String> instanceIds;
	private String databaseId;
	
	public DesligarService(Collection<String> instanceIds, String databaseId) {
		this.instanceIds = instanceIds;
		this.databaseId = databaseId;
	}

	@Override
	public void run() {
		AmazonEC2 ec2 = AmazonEC2ClientBuilder.standard().withRegion("sa-east-1").build();
		AmazonRDS rds = AmazonRDSClientBuilder.standard().withRegion("sa-east-1").build();

		try {
			//System.out.println("\n\n Desligando Banco de Dados\n\n");
			//StopDBInstanceRequest requestDB = new StopDBInstanceRequest().withDBInstanceIdentifier(databaseId);
			//rds.stopDBInstance(requestDB);

			System.out.println("\n\n Desligando Instâncias\n\n");
			StopInstancesRequest requestEC2 = new StopInstancesRequest().withInstanceIds(instanceIds);
			ec2.stopInstances(requestEC2);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
