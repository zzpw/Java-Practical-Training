package data.productionWorkshop;

import java.util.Date;

public class ProductionInfo {
	private String batch;
	private Date date;
	private String workshopNumber;
	private String workShift;
	private String goodsNumber;
	private int quantity;
	private float goodRate;
	
	public ProductionInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductionInfo(String batch, Date date, String workshopNumber, String workShift, String goodsNumber,
			int quantity, float goodRate) {
		super();
		this.batch = batch;
		this.date = date;
		this.workshopNumber = workshopNumber;
		this.workShift = workShift;
		this.goodsNumber = goodsNumber;
		this.quantity = quantity;
		this.goodRate = goodRate;
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
	public String getWorkshopNumber() {
		return workshopNumber;
	}
	public void setWorkshopNumber(String workshopNumber) {
		this.workshopNumber = workshopNumber;
	}
	public String getProductShift() {
		return workShift;
	}
	public void setProductShift(String productShift) {
		this.workShift = productShift;
	}
	public String getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(String goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getGoodRate() {
		return goodRate;
	}
	public void setGoodRate(float goodRate) {
		this.goodRate = goodRate;
	}
}
