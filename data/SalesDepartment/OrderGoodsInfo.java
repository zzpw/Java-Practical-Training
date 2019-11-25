package data.SalesDepartment;

public class OrderGoodsInfo {
	private String orderNumber;
	private String goodsNumber;
	private int quantity;
	private float totalPrice;
	public OrderGoodsInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderGoodsInfo(String orderNumber, String goodsNumber, int quantity, float totalPrice) {
		super();
		this.orderNumber = orderNumber;
		this.goodsNumber = goodsNumber;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
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
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
