package org.anudip.hotelManagement.dao;



import org.anudip.hotelManagement.bean.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
//this interface is used for all kind of database transaction from Spring Application
public interface HotelRepository extends JpaRepository<Hotel, String> {
	//to get the total count of hotel records
	@Query("select count(hotelId) from Hotel")
	public Integer getHotelcount();
}
