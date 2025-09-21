package com.r3sys.appointment;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class User 
{


	@Id
	private String uemail;
	private String uname;
	private String udesignation;
	private String udepartment;
	private String ucompanyName;
	private String ucontact;
	private String uaddress;
	private String upassword;
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUdesignation() {
		return udesignation;
	}
	public void setUdesignation(String udesignation) {
		this.udesignation = udesignation;
	}
	public String getUdepartment() {
		return udepartment;
	}
	public void setUdepartment(String udepartment) {
		this.udepartment = udepartment;
	}
	public String getUcompanyName() {
		return ucompanyName;
	}
	public void setUcompanyName(String ucompanyName) {
		this.ucompanyName = ucompanyName;
	}
	public String getUcontact() {
		return ucontact;
	}
	public void setUcontact(String ucontact) {
		this.ucontact = ucontact;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public User(String uemail, String uname, String udesignation, String udepartment, String ucompanyName,
			String ucontact, String uaddress, String upassword) {
		super();
		this.uemail = uemail;
		this.uname = uname;
		this.udesignation = udesignation;
		this.udepartment = udepartment;
		this.ucompanyName = ucompanyName;
		this.ucontact = ucontact;
		this.uaddress = uaddress;
		this.upassword = upassword;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [uemail=" + uemail + ", uname=" + uname + ", udesignation=" + udesignation + ", udepartment="
				+ udepartment + ", ucompanyName=" + ucompanyName + ", ucontact=" + ucontact + ", uaddress=" + uaddress
				+ ", upassword=" + upassword + "]";
	}
	
	

}
