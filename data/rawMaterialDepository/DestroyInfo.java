package data.rawMaterialDepository;

import java.util.Date;

public class DestroyInfo {
	private String batch;
	private float quantity;
	private Date date;
	private String handler;
	private String remarks;
	public DestroyInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DestroyInfo(String batch, float quantity, Date date, String handler, String remarks) {
		super();
		this.batch = batch;
		this.quantity = quantity;
		this.date = date;
		this.handler = handler;
		this.remarks = remarks;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public float getQuantity() {
		return quantity;
	}
	public void setQuantity(float quantity) {
		this.quantity = quantity;
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
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
