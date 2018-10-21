package com.VO;

import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="staffAllocation")

public class staffAllocationVO {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int staffAllocationId;
	
	//SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	
	@Column(name="Staff_name")
	private String staffName;
	@Column(name="locationAllocated")
	private String locationAllocated;
	@Column(name="dateAssigned")
	private String dateAssigned;
	public int getStaffAllocationId() {
		return staffAllocationId;
	}
	public void setStaffAllocationId(int staffAllocationId) {
		this.staffAllocationId = staffAllocationId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getLocationAllocated() {
		return locationAllocated;
	}
	public void setLocationAllocated(String locationAllocated) {
		this.locationAllocated = locationAllocated;
	}
	public String getDateAssigned() {
		return dateAssigned;
	}
	public void setDateAssigned(String dateAssigned) {
		this.dateAssigned = dateAssigned;
	}
	
	
}
