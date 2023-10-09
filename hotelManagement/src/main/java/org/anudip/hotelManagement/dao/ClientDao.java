package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Client;

//this interface consists of required database operations on Client Class 
public interface ClientDao {
	public void save(Client client);
	public List<Client> getAllClientRecords();
	public Client getClientById(Integer id);
	public Integer generateId();
}
