package admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Rate")
public class Rate {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	@Column(name="Star")
	private String star;
	@Column(name="Dated")
	private String date;
	@Column(name="Phone")
	private String phone;
	@Column(name="NameCustomer")
	private String nameCustomer;
	@Column(name="Note")
	private String note;
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNameCustomer() {
		return nameCustomer;
	}
	public void setNameCustomer(String nameCustomer) {
		this.nameCustomer = nameCustomer;
	}
	@Override
	public String toString() {
		return "Rate [id=" + id + ", star=" + star + ", date=" + date + ", phone=" + phone + ", nameCustomer="
				+ nameCustomer + ", note=" + note + ", getNote()=" + getNote() + ", getId()=" + getId() + ", getStar()="
				+ getStar() + ", getDate()=" + getDate() + ", getPhone()=" + getPhone() + ", getNameCustomer()="
				+ getNameCustomer() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
}
