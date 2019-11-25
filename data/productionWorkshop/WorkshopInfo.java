package data.productionWorkshop;

public class WorkshopInfo {
	private String number;
	private String principal;
	private String type;
	
	public WorkshopInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public WorkshopInfo(String number, String principal, String type) {
		super();
		this.number = number;
		this.principal = principal;
		this.type = type;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
