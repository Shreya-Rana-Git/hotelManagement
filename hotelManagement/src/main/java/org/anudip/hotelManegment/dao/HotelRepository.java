package org.anudip.hotelManegment.dao;

import org.anudip.hotelManegment.bean.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface HotelRepository extends JpaRepository<Hotel, String> {
	
	@Query("select max(hotelId) from Hotel")
	public String getLastHotelId();
}
