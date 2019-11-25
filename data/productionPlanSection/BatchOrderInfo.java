package data.productionPlanSection;

public class BatchOrderInfo {
	private String batch;
	private String orderNumber;
	private String stock;
	
	public BatchOrderInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BatchOrderInfo(String batch, String orderNumber, String stock) {
		super();
		this.batch = batch;
		this.orderNumber = orderNumber;
		this.stock = stock;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}
	
	
	
}
