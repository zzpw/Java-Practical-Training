package data.financeDepartment;

import java.util.Date;

public class CollectionInfo {
	private String serialNumber;
	private String orderNumber;
	private String type;
	private float money;
	private Date date;
	private String operator;
	private String payer;
	
	public CollectionInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CollectionInfo(String serialNumber, String orderNumber, String type, float money, Date date, String operator,
			String payer) {
		super();
		this.serialNumber = serialNumber;
		this.orderNumber = orderNumber;
		this.type = type;
		this.money = money;
		this.date = date;
		this.operator = operator;
		this.payer = payer;
	}

	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getPayer() {
		return payer;
	}
	public void setPayer(String payer) {
		this.payer = payer;
	}
	

	
}
