package org.anudip.hotelManagement.dao;

import org.anudip.hotelManagement.bean.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;
//this interface is used for all kind of database transaction from Spring Application
public interface AccommodationRepository extends JpaRepository<Accommodation, String> {

}
