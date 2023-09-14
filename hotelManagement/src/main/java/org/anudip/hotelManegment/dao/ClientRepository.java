package org.anudip.hotelManegment.dao;

import org.anudip.hotelManegment.bean.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClientRepository extends JpaRepository<Client, String> {
	
	@Query("select max(clientNumber) from Client")
	public Integer getLastClientNumber();
}
