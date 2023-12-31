package org.anudip.hotelManagement.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Client_Services")
public class ClientServices {
	// Member data
		@Id
		private Integer serialNumber;
		private Integer clientNumber;
		private String serviceType;
		private String date;
		private Double amount;
	//constructors
		public ClientServices() {
			super();
			// TODO Auto-generated constructor stub
		}
		public ClientServices(Integer serialNumber) {
			super();
			this.serialNumber = serialNumber;
		}
		public ClientServices(Integer serialNumber, Integer clientNumber, String serviceType, String date,
				Double amount) {
			super();
			this.serialNumber = serialNumber;
			this.clientNumber = clientNumber;
			this.serviceType = serviceType;
			this.date = date;
			this.amount = amount;
		}
		
	//Getter and Setter methods
		public Integer getSerialNumber() {
			return serialNumber;
		}
		public void setSerialNumber(Integer serialNumber) {
			this.serialNumber = serialNumber;
		}
		public Integer getClientNumber() {
			return clientNumber;
		}
		public void setClientNumber(Integer clientNumber) {
			this.clientNumber = clientNumber;
		}
		public String getServiceType() {
			return serviceType;
		}
		public void setServiceType(String serviceType) {
			this.serviceType = serviceType;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public Double getAmount() {
			return amount;
		}
		public void setAmount(Double amount) {
			this.amount = amount;
		}
		
		

}
