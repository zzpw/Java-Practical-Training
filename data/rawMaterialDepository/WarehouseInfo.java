package data.rawMaterialDepository;

public class WarehouseInfo {
	private String batch;
	private float quantity;
	private String area;
	public WarehouseInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WarehouseInfo(String batch, float quantity, String area) {
		super();
		this.batch = batch;
		this.quantity = quantity;
		this.area = area;
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
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	 
}
