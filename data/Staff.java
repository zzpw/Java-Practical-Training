package data;

import java.util.Date;

public class Staff {
	private String number;
	private String name;
	private String sex;
	private Date birthday;
	private String nation;
	private String home;
	private String idNumber;
	private String marriage;
	private String phone;
	private Date hireDate;
	private String status;
	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Staff(String number, String name, String sex, Date birthday, String nation, String home, String idNumber,
			String marriage, String phone, Date hireDate, String status) {
		super();
		this.number = number;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.nation = nation;
		this.home = home;
		this.idNumber = idNumber;
		this.marriage = marriage;
		this.phone = phone;
		this.hireDate = hireDate;
		this.status = status;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getMarriage() {
		return marriage;
	}
	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
