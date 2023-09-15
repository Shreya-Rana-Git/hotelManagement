package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Accommodation;

public interface AccommodationDao {
	
	public void save(Accommodation accommodation);
	public List<Accommodation> getAllAccommodationRecords();
	public Accommodation getAccommodationById(String id);
}
