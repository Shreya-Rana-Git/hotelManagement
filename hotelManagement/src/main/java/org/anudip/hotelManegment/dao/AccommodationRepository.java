package org.anudip.hotelManegment.dao;

import org.anudip.hotelManegment.bean.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccommodationRepository extends JpaRepository<Accommodation, String> {

}
