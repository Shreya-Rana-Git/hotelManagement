package org.anudip.hotelManagement.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Client")
public class Client {
	// Member data
		@Id
		private Integer clientNumber;
		private String clientName;
		private String clientAddress;
		private String contactNo;
		private String gender;
		private String hotelId;
		private String checkinDate;
		private String checkoutDate;
		private String accommodationId;
		private String payStatus;
		
	// Constructors
		public Client() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Client(Integer clientNumber) {
			super();
			this.clientNumber = clientNumber;
		}
		public Client(Integer clientNumber, String clientName, String clientAddress, String contactNo, String gender,
				String hotelId, String checkinDate, String checkoutDate, String accommodationId, String payStatus) {
			super();
			this.clientNumber = clientNumber;
			this.clientName = clientName;
			this.clientAddress = clientAddress;
			this.contactNo = contactNo;
			this.gender = gender;
			this.hotelId = hotelId;
			this.checkinDate = checkinDate;
			this.checkoutDate = checkoutDate;
			this.accommodationId = accommodationId;
			this.payStatus = payStatus;
		}
		
	// Getter and Setter Methods
		public Integer getClientNumber() {
			return clientNumber;
		}
		public void setClientNumber(Integer clientNumber) {
			this.clientNumber = clientNumber;
		}
		public String getClientName() {
			return clientName;
		}
		public void setClientName(String clientName) {
			this.clientName = clientName;
		}
		public String getClientAddress() {
			return clientAddress;
		}
		public void setClientAddress(String clientAddress) {
			this.clientAddress = clientAddress;
		}
		public String getContactNo() {
			return contactNo;
		}
		public void setContactNo(String contactNo) {
			this.contactNo = contactNo;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getHotelId() {
			return hotelId;
		}
		public void setHotelId(String hotelId) {
			this.hotelId = hotelId;
		}
		public String getCheckinDate() {
			return checkinDate;
		}
		public void setCheckinDate(String checkinDate) {
			this.checkinDate = checkinDate;
		}
		public String getCheckoutDate() {
			return checkoutDate;
		}
		public void setCheckoutDate(String checkoutDate) {
			this.checkoutDate = checkoutDate;
		}
		public String getAccommodationId() {
			return accommodationId;
		}
		public void setAccommodationId(String accommodationId) {
			this.accommodationId = accommodationId;
		}
		public String getPayStatus() {
			return payStatus;
		}
		public void setPayStatus(String payStatus) {
			this.payStatus = payStatus;
		}
		
		

}
