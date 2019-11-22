package data;

public class Account {
	private String username;
	private String passward;
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(String username, String passward) {
		super();
		this.username = username;
		this.passward = passward;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassward() {
		return passward;
	}
	public void setPassward(String passward) {
		this.passward = passward;
	}
}
