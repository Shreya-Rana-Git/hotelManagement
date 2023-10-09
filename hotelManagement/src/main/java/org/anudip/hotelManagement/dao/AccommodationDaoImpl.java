package org.anudip.hotelManagement.dao;

import java.util.List;

import org.anudip.hotelManagement.bean.Accommodation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Repository
@Service
public class AccommodationDaoImpl implements AccommodationDao {
	@Autowired
	private AccommodationRepository repository;

	//method for saving accommodation records
	@Override
	public void save(Accommodation accommodation) {
		repository.save(accommodation);
	}

	//for getting all accommodation records
	@Override
	public List<Accommodation> getAllAccommodationRecords() {
		return repository.findAll();
	}

	//for getting single record
	@Override
	public Accommodation getAccommodationById(String id) {
		return repository.findById(id).get();
	}

}
