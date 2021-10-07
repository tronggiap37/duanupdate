package admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetail")
public class OrderDetail {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	@Column(name="ID_Orders")
	private String iD_Orders;
	@Column(name="Email")
	private String email;
	@Column(name="Phone")
	private String phone;
	@Column(name="City")
	private String city;
	@Column(name="District")
	private String district;
	@Column(name="Ward")
	private String ward;
	@Column(name="Street")
	private String street;
	@Column(name="Dated")
	private String dated;
	@Column(name="Slot")
	private String slot;
	@Column(name="Staff")
	private String staff;
	@Column(name="Note")
	private String note;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getiD_Orders() {
		return iD_Orders;
	}
	public void setiD_Orders(String iD_Orders) {
		this.iD_Orders = iD_Orders;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getDated() {
		return dated;
	}
	public void setDated(String dated) {
		this.dated = dated;
	}
	public String getSlot() {
		return slot;
	}
	public void setSlot(String slot) {
		this.slot = slot;
	}
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "LichKhachHang [id=" + id + ", iD_Orders=" + iD_Orders + ", email=" + email + ", phone=" + phone
				+ ", city=" + city + ", district=" + district + ", ward=" + ward + ", street=" + street + ", dated="
				+ dated + ", slot=" + slot + ", staff=" + staff + ", note=" + note + ", getId()=" + getId()
				+ ", getiD_Orders()=" + getiD_Orders() + ", getEmail()=" + getEmail() + ", getPhone()=" + getPhone()
				+ ", getCity()=" + getCity() + ", getDistrict()=" + getDistrict() + ", getWard()=" + getWard()
				+ ", getStreet()=" + getStreet() + ", getDated()=" + getDated() + ", getSlot()=" + getSlot()
				+ ", getStaff()=" + getStaff() + ", getNote()=" + getNote() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	

	
	
	
	
}
