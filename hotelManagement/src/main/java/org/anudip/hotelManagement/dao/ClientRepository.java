package org.anudip.hotelManagement.dao;

import org.anudip.hotelManagement.bean.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

//this interface is used for all kind of database transaction from Spring Application
public interface ClientRepository extends JpaRepository<Client, Integer> {
	
	// to get the max client number
	@Query("select max(clientNumber) from Client")
	public Integer getLastClientNumber();
}
