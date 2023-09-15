package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.ClientServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Repository
@Service
public class ClientServicesDaoImpl implements ClientServicesDao {
	@Autowired
	private ClientServicesRepository repository;
	@Override
	public void save(ClientServices clientService) {
		repository.save(clientService);

	}

	@Override
	public List<ClientServices> allClientServiceRecords() {
		return repository.findAll();
	}

	@Override
	public Integer generateSerialNumber() {
		Integer  id = repository.getLastSerialNumber();
		if(id==null) {
			id=1;
		}
		else {
			id++;
		}
		return id;
	}

	@Override
	public List<ClientServices> clientServicesByClientNumber(Integer clientNumber) {
		return null;
	}

}
