package data;

public class StaffPositionInfo {
	private String staff;
	private String department;
	private String position;
	private String power;
	public StaffPositionInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StaffPositionInfo(String staff, String department, String position, String power) {
		super();
		this.staff = staff;
		this.department = department;
		this.position = position;
		this.power = power;
	}
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	
	
}
