package data.finishedProductDepository;

import java.util.Date;

public class WarehouseInfo {
	private String number;
	private int quantity;
	private Date date;
	private String batch;
	private String storagePlace;
	
	public WarehouseInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WarehouseInfo(String number, int quantity, Date date, String batch, String storagePlace) {
		super();
		this.number = number;
		this.quantity = quantity;
		this.date = date;
		this.batch = batch;
		this.storagePlace = storagePlace;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getStoragePlace() {
		return storagePlace;
	}
	public void setStoragePlace(String storagePlace) {
		this.storagePlace = storagePlace;
	}
	
}
