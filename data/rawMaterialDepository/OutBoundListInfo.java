package data.rawMaterialDepository;

public class OutBoundListInfo {
	private String productionBatch;
	private String rawBatch;
	private float quantity;
	private String unit;
	public OutBoundListInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OutBoundListInfo(String productionBatch, String rawBatch, float quantity, String unit) {
		super();
		this.productionBatch = productionBatch;
		this.rawBatch = rawBatch;
		this.quantity = quantity;
		this.unit = unit;
	}
	public String getProductionBatch() {
		return productionBatch;
	}
	public void setProductionBatch(String productionBatch) {
		this.productionBatch = productionBatch;
	}
	public String getRawBatch() {
		return rawBatch;
	}
	public void setRawBatch(String rawBatch) {
		this.rawBatch = rawBatch;
	}
	public float getQuantity() {
		return quantity;
	}
	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	
}
