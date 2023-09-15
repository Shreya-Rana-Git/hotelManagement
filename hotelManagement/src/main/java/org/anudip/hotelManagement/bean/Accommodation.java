package org.anudip.hotelManagement.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Accommodation {
	// Member data
		@Id
		private String accommodationId;
		private String accommodationType;
		private Double farePerDay;
		
		public Accommodation() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Accommodation(String accommodationId, String accommodationType, Double farePerDay) {
			super();
			this.accommodationId = accommodationId;
			this.accommodationType = accommodationType;
			this.farePerDay = farePerDay;
		}

		public String getAccommodationId() {
			return accommodationId;
		}

		public void setAccommodationId(String accommodationId) {
			this.accommodationId = accommodationId;
		}

		public String getAccommodationType() {
			return accommodationType;
		}

		public void setAccommodationType(String accommodationType) {
			this.accommodationType = accommodationType;
		}

		public Double getFarePerDay() {
			return farePerDay;
		}

		public void setFarePerDay(Double farePerDay) {
			this.farePerDay = farePerDay;
		}
		
		
		

}
