package data.productionWorkshop;

import java.util.Date;

public class ProductionInfo {
	private String batch;
	private Date date;
	private String workshopNumber;
	private String productShift;
	private String goodsNumber;
	private int quantity;
	private float goodRate;
	
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
		return productShift;
	}
	public void setProductShift(String productShift) {
		this.productShift = productShift;
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
