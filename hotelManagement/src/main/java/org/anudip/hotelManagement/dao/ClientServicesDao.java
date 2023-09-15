package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.ClientServices;

public interface ClientServicesDao {
	public void save(ClientServices clientService);
	public List<ClientServices> allClientServiceRecords();
	public Integer generateSerialNumber();
	public List<ClientServices> clientServicesByClientNumber(Integer clientNumber);
}
