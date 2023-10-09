package org.anudip.hotelManagement.dao;

import java.util.List;
import org.anudip.hotelManagement.bean.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Repository
@Service
public class HotelDaoImpl implements HotelDao {
	
	@Autowired
	private HotelRepository repository;
	
	//for saving hotel records
	@Override
	public void save(Hotel hotel) {
		repository.save(hotel);
	}

	//for getting all hotel records
	@Override
	public List<Hotel> getAllHotelRecords() {
		return repository.findAll();
	}

	//for getting single hotel record
	@Override
	public Hotel getHotelById(String id) {
		return repository.findById(id).get();
	}

	//for generating new hotel id
	@Override
	public String generateId() {
		String id="";
		int n =repository.getHotelcount();
		if(n==0) {
			id="H1";
		}
		else {
			n++;
			id="H"+n;
		}
		return id;
	}

}
