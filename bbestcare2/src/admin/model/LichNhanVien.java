package admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LichNhanVien")
public class LichNhanVien {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	@Column(name="Phone")
	private String phone;
	@Column(name="Fullname")
	private String fullname;
	@Column(name="Dated")
	private String dated;
	@Column(name="Slot")
	private String slot;
	@Column(name="Note")
	private String note;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
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
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "LichNhanVien [id=" + id + ", phone=" + phone + ", fullname=" + fullname + ", dated=" + dated + ", slot="
				+ slot + ", note=" + note + ", getId()=" + getId() + ", getPhone()=" + getPhone() + ", getFullname()="
				+ getFullname() + ", getDated()=" + getDated() + ", getSlot()=" + getSlot() + ", getNote()=" + getNote()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
	
}
