package data.rawMaterialDepository;

import java.util.Date;

public class OutBoundInfo {
	private String batch;
	private String handler;
	private String receiver;
	private Date date;
	private String remarks;
	public OutBoundInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OutBoundInfo(String batch, String handler, String receiver, Date date, String remarks) {
		super();
		this.batch = batch;
		this.handler = handler;
		this.receiver = receiver;
		this.date = date;
		this.remarks = remarks;
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
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
