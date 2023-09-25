package org.anudip.hotelManagement.service;

import java.util.List;

import org.anudip.hotelManagement.bean.Accommodation;
import org.anudip.hotelManagement.bean.ClientServices;
import org.springframework.stereotype.Service;

@Service
public class ClientService {
	// to calculate the total amount
	public  Double calculateTotalAmount(List<ClientServices> clientServices, Accommodation accommodation) {
		Double total = accommodation.getFarePerDay();
		for (ClientServices client : clientServices) {
			total+=client.getAmount();
		}
		return total;
	}

}
