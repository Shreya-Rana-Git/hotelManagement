package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Accommodation;

//this interface consists of required database operations on Accommodation class
public interface AccommodationDao {
	
	public void save(Accommodation accommodation); 
	public List<Accommodation> getAllAccommodationRecords(); 
	public Accommodation getAccommodationById(String id); 
}
