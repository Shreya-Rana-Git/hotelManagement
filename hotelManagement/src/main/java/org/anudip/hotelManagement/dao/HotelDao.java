package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Hotel;
//this interface consists of required database operations on Hotel class
public interface HotelDao {
	public void save(Hotel hotel); 
	public List<Hotel> getAllHotelRecords(); 
	public Hotel getHotelById(String id); 
	public String generateId();
}
