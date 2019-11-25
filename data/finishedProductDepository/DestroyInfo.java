package data.finishedProductDepository;

import java.util.Date;

public class DestroyInfo {
	private String number;
	private Date date;
	private String batch;
	private String handler;
	private String remarks;
	
	public DestroyInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DestroyInfo(String number, Date date, String batch, String handler, String remarks) {
		super();
		this.number = number;
		this.date = date;
		this.batch = batch;
		this.handler = handler;
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
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
}
