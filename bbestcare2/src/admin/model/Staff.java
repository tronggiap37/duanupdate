package admin.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="Staff")
public class Staff {
	@Id
	
	
	@Column(name="Phone")
	private String phone;
	@Column(name="Password")
	private String password;
	@Column(name="Fullname")
	private String fullname;
	@Column(name="Birthday")
	private String birthday;
	@Column(name="Gender")
	private String gender;
	@Column(name="Email")
	private String email;
	@Column(name="Address")
	private String address;
	@Column(name="HomeTown")
	private String hometown;
	@Column(name="Images")
	private String images;
	@Column(name="PeopleID")
	private String peopleid;
	@Column(name="AccountNumberBank")
	private String accountNumberBank;
	@Column(name="Experience")
	private String experience;
	@Column(name="Degree")
	private String degree;
	@Column(name="Role")
	private String role;
	@Column(name="Status")
	private String status;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getPeopleid() {
		return peopleid;
	}
	public void setPeopleid(String peopleid) {
		this.peopleid = peopleid;
	}
	public String getAccountNumberBank() {
		return accountNumberBank;
	}
	public void setAccountNumberBank(String accountNumberBank) {
		this.accountNumberBank = accountNumberBank;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Staff [phone=" + phone + ", password=" + password + ", fullname=" + fullname + ", birthday=" + birthday
				+ ", gender=" + gender + ", email=" + email + ", address=" + address + ", hometown=" + hometown
				+ ", images=" + images + ", peopleid=" + peopleid + ", accountNumberBank=" + accountNumberBank
				+ ", experience=" + experience + ", degree=" + degree + ", role=" + role + ", status=" + status
				+ ", getPhone()=" + getPhone() + ", getPassword()=" + getPassword() + ", getFullname()=" + getFullname()
				+ ", getBirthday()=" + getBirthday() + ", getGender()=" + getGender() + ", getEmail()=" + getEmail()
				+ ", getAddress()=" + getAddress() + ", getHometown()=" + getHometown() + ", getImages()=" + getImages()
				+ ", getPeopleid()=" + getPeopleid() + ", getAccountNumberBank()=" + getAccountNumberBank()
				+ ", getExperience()=" + getExperience() + ", getDegree()=" + getDegree() + ", getStatus()="
				+ getStatus() + ", getRole()=" + getRole() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
}