package data;

public class Client {
	private String number;
	private String name;
	private String type;
	private String level;
	private int credit;
	private String phone;
	
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Client(String number, String name, String type, String level, int credit, String phone) {
		super();
		this.number = number;
		this.name = name;
		this.type = type;
		this.level = level;
		this.credit = credit;
		this.phone = phone;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

}
