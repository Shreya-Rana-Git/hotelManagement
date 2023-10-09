package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.ClientServices;

//this interface consists of required database operations on ClientService class
public interface ClientServicesDao {
	public void save(ClientServices clientService);
	public List<ClientServices> allClientServiceRecords();
	public Integer generateSerialNumber();
	public List<ClientServices> clientServicesByClientNumber(Integer clientNumber);
}
