package org.anudip.hotelManagement.controller;

import java.util.List;
import java.util.NoSuchElementException;

import org.anudip.hotelManagement.bean.Accommodation;
import org.anudip.hotelManagement.bean.Client;
import org.anudip.hotelManagement.bean.ClientServices;
import org.anudip.hotelManagement.bean.Hotel;
import org.anudip.hotelManagement.dao.AccommodationDao;
import org.anudip.hotelManagement.dao.ClientDao;
import org.anudip.hotelManagement.dao.ClientServicesDao;
import org.anudip.hotelManagement.dao.HotelDao;
import org.anudip.hotelManagement.exception.PayStatusException;
import org.anudip.hotelManagement.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@ControllerAdvice
@RestController
public class HotelController {
	
	//properties of HotelController class
	@Autowired
	private ClientService service;
	@Autowired
	private HotelDao hotelDao;
	@Autowired
	private AccommodationDao accommodationDao;
	private String accId;
	@Autowired
	private ClientServicesDao clientServicesDao;
	private Integer clientIdToFindClientService;
	@Autowired
	private ClientDao clientDao;
	private Integer clientidToFindAndUpdate;
	
	//loads the index page
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		return new ModelAndView("index");
	}
	
	
	/*
	 * 
	 * For  Hotel
	 * 
	 */
	
	//loads the HotelAddition page 
	@GetMapping("/hotel-add")
	public ModelAndView showHotelAddPage() {
		ModelAndView mv = new ModelAndView("HotelAddition");
		String id = hotelDao.generateId();
		Hotel hotel = new Hotel(id);
		mv.addObject("hotelrecords", hotel);
		return mv;
	}
	
	//saves the Hotel records in the database
	@PostMapping("/hotel-save")
	public ModelAndView saveHotelRecords(@ModelAttribute("hotelrecords") Hotel hotel) {
		hotelDao.save(hotel);
		return new ModelAndView("redirect:/hotel-view");
		
	}
	
	//loads the DisplayAllHotels page and show all records
	@GetMapping("/hotel-view")
	public ModelAndView showDisplayAllHotelsPage() {
		ModelAndView mv = new ModelAndView("DisplayAllHotels");
		List<Hotel> hotellist = hotelDao.getAllHotelRecords();
		mv.addObject("hotellist", hotellist);
		return mv;
	}
	
	// loads the DisplaySingleHotel page with the single record after finding the record
	@PostMapping("/hotel-find")
	public ModelAndView showDisplaySingleHotelsPage(@RequestParam("hotelid") String hotelid) {
		ModelAndView mv = new ModelAndView("DisplaySingleHotel");
		Hotel hotel = hotelDao.getHotelById(hotelid);
		mv.addObject("HotelDetails", hotel);
		return mv;
	}
	
	/*
	 * 
	 * For  Accommodation
	 * 
	 * 
	 */
	
	
	//loads the AccommodationAddition Page
	@GetMapping("/accommodation-add")
	public ModelAndView showAccommodationAdditonPage() {
		ModelAndView mv = new ModelAndView("AccommodationAddition");
		Accommodation accommodation = new Accommodation();
		mv.addObject("accommodationRecord",accommodation);
		return mv;

	}
	
	//saves the newly entered accommodation records
	@PostMapping("/accommodation-save")
	public ModelAndView saveStudentRecord(@ModelAttribute("accommodationRecord") Accommodation accommodation) {
		accommodationDao.save(accommodation);
		return new ModelAndView("redirect:/accommodation-view");
	}
	
	//loads the DisplayAllAccommodations Page and display all accommodation records
	@GetMapping("/accommodation-view")
	public ModelAndView showDisplayAllAccommodationsPage() {
		ModelAndView mv = new ModelAndView("DisplayAllAccommodations");
		List<Accommodation> accommodationlist = accommodationDao.getAllAccommodationRecords();
		mv.addObject("accommodationlist", accommodationlist);
		return mv;
	}
	
	//loads the DisplaySingleAccommodation page and display the single record after finding the record
	@PostMapping("/accommodation-find")
	public ModelAndView showDisplaySingleAccommodationPage(@RequestParam("accommodationid") String accommodationid) {
		accId = accommodationid;
		ModelAndView mv = new ModelAndView("DisplaySingleAccommodation");
		Accommodation accommodation = accommodationDao.getAccommodationById(accommodationid);
		mv.addObject("accommodation", accommodation);
		return mv;
	}
	
	//loads the AccommodationUpdate page
	@GetMapping("/accommodation-update")
	public ModelAndView showAccommodationUpdatePage() {
		ModelAndView mv = new ModelAndView("AccommodationUpdate");
		Accommodation accommodation = accommodationDao.getAccommodationById(accId);
		mv.addObject("accommodationRecord", accommodation);
		return mv;
	}
	/*
	 * 
	 *  for client
	 * 
	 */
	
	
	//loads the ClientAddition Page
	@GetMapping("/client-addition")
	public ModelAndView showClientAdditionPage() {
		ModelAndView mv = new ModelAndView("ClientAddition");
		Integer id =clientDao.generateId();
		Client client = new Client(id);
		List<Accommodation> accommodationList = accommodationDao.getAllAccommodationRecords();
		mv.addObject("accommodationList",accommodationList);
		List<Hotel> hotelList = hotelDao.getAllHotelRecords();
		mv.addObject("accommodationList",accommodationList);
		mv.addObject("hotelList",hotelList);
		mv.addObject("clientDetails", client);
		return mv;
	}
	
	
	//save the newly entered client records
	@PostMapping("/client-save")
	public ModelAndView saveClientRecord(@ModelAttribute("clientDetails") Client client) {
		clientDao.save(client);
		return new ModelAndView("redirect:/client-view");
	}
	
	//loads the DisplayAllClientRecords page and display all the client records
	@GetMapping("/client-view")
	public ModelAndView showDisplayClientRecordPage() {
		ModelAndView mv = new ModelAndView("DisplayAllClientRecords");
		List<Client> clientlist = clientDao.getAllClientRecords();
		mv.addObject("clientlist", clientlist);
		return mv;
	}
	
	//loads the DisplaySingleClient page and display the single record after finding the record 
	@PostMapping("/client-find")
	public ModelAndView showDisplaySingleClientPage(@RequestParam("clientid") Integer clientid) {
		clientidToFindAndUpdate = clientid;
		ModelAndView mv = new ModelAndView("DisplaySingleClient");
		Client client=clientDao.getClientById(clientid);
		if(client.getClientNumber()==null)
			throw new NoSuchElementException();
		else
			mv.addObject("client", client);
		
		return mv;
	}
	
	//loads the ClientUpdate page
	@GetMapping("/client-update")
	public ModelAndView showClientUpdatePage() {
		ModelAndView mv = new ModelAndView("ClientUpdate");
		Client client = clientDao.getClientById(clientidToFindAndUpdate);
		mv.addObject("clientDetails",client);
		return mv;
	}
	
	
	

	/*
	 * 
	 * For  Client Service
	 * 
	 */
	
	
	//loads the ClientServiceAddition page
	@GetMapping("/client-service-addition")
	public ModelAndView showClientServiceAdditionPage() {
		ModelAndView mv = new ModelAndView("ClientServiceAddition");
		Integer id =clientServicesDao.generateSerialNumber();
		ClientServices clientServices = new ClientServices(id);
		List<Client> clientlist = clientDao.getAllClientRecords();
		mv.addObject("clientList", clientlist);
		mv.addObject("clientserviceDetails", clientServices);
		return mv;
	}
	
	//saves the newly entered client service record 
	@PostMapping("/client-service-save")
	public ModelAndView saveClientServiceRecord(@ModelAttribute("clientserviceDetails") ClientServices clientServices) {
		clientServicesDao.save(clientServices);
		return new ModelAndView("redirect:/client-service-view");
	}
	
	//loads the DisplayAllClientServiceRecords page and display all the records 
	@GetMapping("/client-service-view")
	public ModelAndView showDisplayClientServiceRecordPage() {
		ModelAndView mv = new ModelAndView("DisplayAllClientServicesRecords");
		List<ClientServices> clientservicelist = clientServicesDao.allClientServiceRecords();
		mv.addObject("clientservicelist", clientservicelist);
		return mv;
	}
	
	//loads the DisplayClientServiceOfSingleClient page and display the records after finding
	@PostMapping("/client-service-find")
	public ModelAndView showDisplaySingleClientServicePage(@RequestParam("clientid") Integer clientid) {
		clientIdToFindClientService = clientid;
		ModelAndView mv = new ModelAndView("DisplayClientServiceOfSingleClient");
		List<ClientServices> clientservice = clientServicesDao.clientServicesByClientNumber(clientid);
		mv.addObject("clientservicelist",clientservice);
		mv.addObject("clientid",clientIdToFindClientService);
		return mv;
	}
	
	
	/*
	 * 
	 * Final Payment
	 * 
	 * 
	 */
	
	//loads the Bill page and display the created bill
	@PostMapping("/bill")
	public ModelAndView showBillPage(@RequestParam("clno") Integer clid) {
		ModelAndView mv =new ModelAndView("Bill");
		Client client = clientDao.getClientById(clid);
		if(client.getPayStatus().equalsIgnoreCase("pending")){
		mv.addObject("client", client);
		Accommodation accommodation = accommodationDao.getAccommodationById(client.getAccommodationId());
		mv.addObject("accommodation",accommodation);
		Hotel hotel = hotelDao.getHotelById(client.getHotelId());
		mv.addObject("hotel", hotel);
		List<ClientServices> clientServiceList = clientServicesDao.clientServicesByClientNumber(clid);
		mv.addObject("clientServiceList", clientServiceList);
		Double total = service.calculateTotalAmount(clientServiceList,accommodation);
		mv.addObject("total", total);
		client.setPayStatus("paid");
		clientDao.save(client);
		}
		else {
			throw new PayStatusException();
		}
		return mv;
		
	}
	/*
	 * 
	 * Exception
	 * 
	 */
	
	//checks whether the value of paystatus is paid or not . If paid then it display the exception
	@ExceptionHandler(value=PayStatusException.class)
	public ModelAndView showPayStatusErrorPasge() {
		ModelAndView mv = new ModelAndView("PayStatusErrorPage");
		String message="Bill has already been paid";
		   mv.addObject("errorMessage",message);
		   return mv;
	}

	//checks that the client id is present or not . if not present then the error message will be displayed
	@ExceptionHandler(value=NoSuchElementException.class)
	public ModelAndView showClientErrorPasge() {
		ModelAndView mv = new ModelAndView("ClientError");
		String message="Client Not Found";
		   mv.addObject("errorMessage",message);
		   return mv;
	}
	
}
