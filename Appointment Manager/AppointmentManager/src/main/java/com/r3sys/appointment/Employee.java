package com.r3sys.appointment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class Employee 
{
	@Id
	private String emailId;
	private String name;
	private String designation;
	private String department;
	private String  contact;
	private String password;
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Employee(String emailId, String name, String designation, String department, String contact,
			String password) {
		super();
		this.emailId = emailId;
		this.name = name;
		this.designation = designation;
		this.department = department;
		this.contact = contact;
		this.password = password;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [emailId=" + emailId + ", name=" + name + ", designation=" + designation + ", department="
				+ department + ", contact=" + contact + ", password=" + password + "]";
	}
	
	

}
