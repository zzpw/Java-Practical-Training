package data.SalesDepartment;

import java.util.Date;

public class PickUpBill {
	private String number;
	private Date createDate;
	private String handler;
	private Date pickUpDate;
	private String orderNumber;
	private String pickUpStatus;
	private String senderStaff;
	public PickUpBill() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PickUpBill(String number, Date createDate, String handler, Date pickUpDate, String orderNumber,
			String pickUpStatus, String senderStaff) {
		super();
		this.number = number;
		this.createDate = createDate;
		this.handler = handler;
		this.pickUpDate = pickUpDate;
		this.orderNumber = orderNumber;
		this.pickUpStatus = pickUpStatus;
		this.senderStaff = senderStaff;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public Date getPickUpDate() {
		return pickUpDate;
	}
	public void setPickUpDate(Date pickUpDate) {
		this.pickUpDate = pickUpDate;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getPickUpStatus() {
		return pickUpStatus;
	}
	public void setPickUpStatus(String pickUpStatus) {
		this.pickUpStatus = pickUpStatus;
	}
	public String getSenderStaff() {
		return senderStaff;
	}
	public void setSenderStaff(String senderStaff) {
		this.senderStaff = senderStaff;
	}
	
}
