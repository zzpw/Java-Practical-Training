package data.productionPlanSection;

import java.util.Date;

public class CancelInfo {
	private String batch;
	private Date date;
	private String handler;
	private String reason;
	
	public CancelInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CancelInfo(String batch, Date date, String handler, String reason) {
		super();
		this.batch = batch;
		this.date = date;
		this.handler = handler;
		this.reason = reason;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
}
