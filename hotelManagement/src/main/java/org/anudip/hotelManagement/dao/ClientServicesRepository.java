package org.anudip.hotelManagement.dao;

import org.anudip.hotelManagement.bean.ClientServices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClientServicesRepository extends JpaRepository<ClientServices, Integer> {
	
	@Query("select max(serialNumber) from ClientServices")
	public Integer getLastSerialNumber();
}
