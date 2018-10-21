package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Staff")

public class staffVO {
	
	

	

		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int staffID;
		
		@Column(name="first_name")
		private String firstName;
		
		@Column(name="last_name")
		private String lastName;
		
		@Column(name="Email")
		private String email;
		@Column(name="Password")
		private String password;
		@Column(name="Phone_no")
		private String phoneNumber;
		
		@ManyToOne 
		private LoginVO  loginVO;
		
		public int getStaffID() {
			return staffID;
		}
		
		
		public LoginVO getLoginVO() {
			return loginVO;
		}


		public void setLoginVO(LoginVO loginVO) {
			this.loginVO = loginVO;
		}


		public void setStaffID(int staffID) {
			this.staffID = staffID;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getPhoneNumber() {
			return phoneNumber;
		}
		public void setPhoneNumber(String phoneNumber) {
			this.phoneNumber = phoneNumber;
		}
		
		
		
		
		
		
		
	}

