package org.anudip.hotelManagement.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Hotel")
public class Hotel {
	// Member data
		@Id
		private String hotelId;
		private String hotelName;
		public Hotel() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Hotel(String hotelId) {
			super();
			this.hotelId = hotelId;
		}
		public Hotel(String hotelId, String hotelName) {
			super();
			this.hotelId = hotelId;
			this.hotelName = hotelName;
		}
		public String getHotelId() {
			return hotelId;
		}
		public void setHotelId(String hotelId) {
			this.hotelId = hotelId;
		}
		public String getHotelName() {
			return hotelName;
		}
		public void setHotelName(String hotelName) {
			this.hotelName = hotelName;
		}
		
		

}
