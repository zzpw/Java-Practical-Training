package data.rawMaterialDepository;

import java.util.Date;

public class BatchInfo {
	private String batch;
	private String number;
	private Date productDate;
	private String provider;
	public BatchInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BatchInfo(String batch, String number, Date productDate, String provider) {
		super();
		this.batch = batch;
		this.number = number;
		this.productDate = productDate;
		this.provider = provider;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Date getProductDate() {
		return productDate;
	}
	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	
	
}
