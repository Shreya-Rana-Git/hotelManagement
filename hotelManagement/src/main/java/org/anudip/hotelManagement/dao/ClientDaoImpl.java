package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Repository
@Service
public class ClientDaoImpl implements ClientDao{
	@Autowired
	private ClientRepository repository;
	@Override
	public void save(Client client) {
		repository.save(client);
	}

	@Override
	public List<Client> getAllClientRecords() {
		return repository.findAll();
	}

	@Override
	public Client getClientById(Integer id) {
		return repository.findById(id).get();
	}

	@Override
	public Integer generateId() {
		Integer id = repository.getLastClientNumber();
		if(id==null) {
			id=1001;
		}
		else {
			id++;
		}
		return id;
	}


}
