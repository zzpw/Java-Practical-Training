package data.SalesDepartment;

import java.util.Date;

public class ReturnBill {
	private String number;
	private String client;
	private String batch;
	private int quantity;
	private String handler;
	private Date submitDate;
	private String checkStatus;
	private String checkStaff;
	public ReturnBill() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReturnBill(String number, String client, String batch, int quantity, String handler, Date submitDate,
			String checkStatus, String checkStaff) {
		super();
		this.number = number;
		this.client = client;
		this.batch = batch;
		this.quantity = quantity;
		this.handler = handler;
		this.submitDate = submitDate;
		this.checkStatus = checkStatus;
		this.checkStaff = checkStaff;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public String getCheckStatus() {
		return checkStatus;
	}
	public void setCheckStatus(String checkStatus) {
		this.checkStatus = checkStatus;
	}
	public String getCheckStaff() {
		return checkStaff;
	}
	public void setCheckStaff(String checkStaff) {
		this.checkStaff = checkStaff;
	}
	
}
