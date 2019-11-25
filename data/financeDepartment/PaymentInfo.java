package data.financeDepartment;

import java.util.*;

public class PaymentInfo {
	private String serialNumber;
	private String moneyType;
	private float money;
	private String operator;
	private Date date;
	
	public PaymentInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PaymentInfo(String serialNumber, String moneyType, float money, String operator, Date date) {
		super();
		this.serialNumber = serialNumber;
		this.moneyType = moneyType;
		this.money = money;
		this.operator = operator;
		this.date = date;
	}
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}
	public String getMoneyType() {
		return moneyType;
	}
	public void setMoneyType(String moneyType) {
		this.moneyType = moneyType;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}