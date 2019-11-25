package data.SalesDepartment;

import java.util.*;

public class Order {
	private String number;
	private String type;
	private Date date;
	private String client;
	private String staff;
	float totalPrice;
	String status;
	float pendingPayment;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Order(String number, String type, Date date, String client, String staff, float totalPrice, String status,
			float pendingPayment) {
		super();
		this.number = number;
		this.type = type;
		this.date = date;
		this.client = client;
		this.staff = staff;
		this.totalPrice = totalPrice;
		this.status = status;
		this.pendingPayment = pendingPayment;
	}
	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public float getPendingPayment() {
		return pendingPayment;
	}
	public void setPendingPayment(float pendingPayment) {
		this.pendingPayment = pendingPayment;
	}
}