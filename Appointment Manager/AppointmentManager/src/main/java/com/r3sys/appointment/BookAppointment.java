package com.r3sys.appointment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class BookAppointment 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	 private int bid;
	 private String name;
	 private String designation;
	 private String department;
	 private String companyName;
	 private String contact;
	 private String address;
	 private String purpose;
	 private String description;
	 private String date;
	 private String time;
	 private String uEmail;
	 private String eEmail;
	 private String status="pending";
	@Override
	public String toString() {
		return "BookAppointment [bid=" + bid + ", name=" + name + ", designation=" + designation + ", department="
				+ department + ", companyName=" + companyName + ", contact=" + contact + ", address=" + address
				+ ", purpose=" + purpose + ", description=" + description + ", date=" + date + ", time=" + time
				+ ", uEmail=" + uEmail + ", eEmail=" + eEmail + ", status=" + status + "]";
	}
	public BookAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookAppointment(int bid, String name, String designation, String department, String companyName,
			String contact, String address, String purpose, String description, String date, String time, String uEmail,
			String eEmail, String status) {
		super();
		this.bid = bid;
		this.name = name;
		this.designation = designation;
		this.department = department;
		this.companyName = companyName;
		this.contact = contact;
		this.address = address;
		this.purpose = purpose;
		this.description = description;
		this.date = date;
		this.time = time;
		this.uEmail = uEmail;
		this.eEmail = eEmail;
		this.status = status;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String geteEmail() {
		return eEmail;
	}
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
