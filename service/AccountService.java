package service;

import data.Account;

public interface AccountService {
	
	public boolean checkUserName(String userName);
	
	public boolean checkUserNameAndPassward(Account account);
	
	public boolean deleteAccount(String userName);
	
	public boolean updatePassward(Account account);
	
	public boolean addUser(Account account);
}
