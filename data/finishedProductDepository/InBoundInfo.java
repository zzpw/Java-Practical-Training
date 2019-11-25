package data.finishedProductDepository;

import java.util.*;

public class InBoundInfo {
	private String number;
	private Date date;
	private String batch;
	private int originalQuantity;
	private int actualQuantity;
	private String handler;
	private String storagePlace;
	private String remarks;
	
	public InBoundInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public InBoundInfo(String number, Date date, String batch, int originalQuantity, int actualQuantity, String handler,
			String storagePlace, String remarks) {
		super();
		this.number = number;
		this.date = date;
		this.batch = batch;
		this.originalQuantity = originalQuantity;
		this.actualQuantity = actualQuantity;
		this.handler = handler;
		this.storagePlace = storagePlace;
		this.remarks = remarks;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
	public int getOriginalQuantity() {
		return originalQuantity;
	}
	public void setOriginalQuantity(int originalQuantity) {
		this.originalQuantity = originalQuantity;
	}
	public int getActualQuantity() {
		return actualQuantity;
	}
	public void setActualQuantity(int actualQuantity) {
		this.actualQuantity = actualQuantity;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getStoragePlace() {
		return storagePlace;
	}
	public void setStoragePlace(String storagePlace) {
		this.storagePlace = storagePlace;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	

}
