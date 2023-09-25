package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.ClientServices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


public interface ClientServicesRepository extends JpaRepository<ClientServices, Integer> {
	
	@Query("select max(serialNumber) from ClientServices")
	public Integer getLastSerialNumber();
	
	/*@Query("select * from ClientServices cs where clientNumber = :clientNumber")
	public List<ClientServices> getClientServicesByClientNumber(@Param(value = "clientNumber") Integer clientid);*/
	
	@Query("select cs from ClientServices cs where clientNumber = ?1")
	public List<ClientServices> getClientServicesByClientNumber( Integer clientId);
}
