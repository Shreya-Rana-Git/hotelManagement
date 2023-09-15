package org.anudip.hotelManagement.dao;

import org.anudip.hotelManagement.bean.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccommodationRepository extends JpaRepository<Accommodation, String> {

}
