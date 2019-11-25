package data.finishedProductDepository;

public class GoodsInfo {
	private String number;
	private String name;
	private String specification;
	private String unit;
	private String type;
	private int shelfLife;
	private String shelfLifeUnit;
	private float unitPrice;
	
	private String remarks;
	
	public GoodsInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public GoodsInfo(String number, String name, String specification, String unit, String type, int shelfLife,
			String shelfLifeUnit, float unitPrice, String remarks) {
		super();
		this.number = number;
		this.name = name;
		this.specification = specification;
		this.unit = unit;
		this.type = type;
		this.shelfLife = shelfLife;
		this.shelfLifeUnit = shelfLifeUnit;
		this.unitPrice = unitPrice;
		this.remarks = remarks;
	}

	public String getShelfLifeUnit() {
		return shelfLifeUnit;
	}

	public void setShelfLifeUnit(String shelfLifeUnit) {
		this.shelfLifeUnit = shelfLifeUnit;
	}

	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getShelfLife() {
		return shelfLife;
	}
	public void setShelfLife(int shelfLife) {
		this.shelfLife = shelfLife;
	}
	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
}
