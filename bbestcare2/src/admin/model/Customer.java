package admin.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customer")
public class Customer {
	@Id
	
	@Column(name="Phone")
	private String phone;
	
	@Column(name="FullName")
	private String fullname;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Address")
	private String address;
	
	@Column(name="BirthdayBaby")
	private String birthdaybaby;
	
	@Column(name="Password")
	private String password;

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

	public String getBirthdaybaby() {
		return birthdaybaby;
	}

	public void setBirthdaybaby(String birthdaybaby) {
		this.birthdaybaby = birthdaybaby;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Customer [phone=" + phone + ", fullname=" + fullname + ", email=" + email + ", address=" + address
				+ ", birthdaybaby=" + birthdaybaby + ", password=" + password + ", getPhone()=" + getPhone()
				+ ", getFullname()=" + getFullname() + ", getEmail()=" + getEmail() + ", getAddress()=" + getAddress()
				+ ", getBirthdaybaby()=" + getBirthdaybaby() + ", getPassword()=" + getPassword() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	

	
	
}
