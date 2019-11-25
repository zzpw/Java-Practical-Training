package data.SalesDepartment;

public class SaleStrategy {
	private String clientLevel;
	private float discount;
	private float PrepayRate;
	public SaleStrategy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleStrategy(String clientLevel, float discount, float prepayRate) {
		super();
		this.clientLevel = clientLevel;
		this.discount = discount;
		PrepayRate = prepayRate;
	}
	public String getClientLevel() {
		return clientLevel;
	}
	public void setClientLevel(String clientLevel) {
		this.clientLevel = clientLevel;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public float getPrepayRate() {
		return PrepayRate;
	}
	public void setPrepayRate(float prepayRate) {
		PrepayRate = prepayRate;
	}
	
	
}
