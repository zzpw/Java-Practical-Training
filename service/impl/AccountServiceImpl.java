package service.impl;

import dao.impl.AccountDao;
import data.Account;
import service.AccountService;

public class AccountServiceImpl implements AccountService{

	private AccountDao accountDao;
	
	public AccountServiceImpl() {
		super();
		this.accountDao = new AccountDao();
	}

	@Override
	public boolean checkUserName(String userName) {
		return accountDao.doExist(userName);
	}

	@Override
	public boolean checkUserNameAndPassward(Account account) {
		return accountDao.doExistMul(account);
	}

	@Override
	public boolean deleteAccount(String userName) {
		return accountDao.doDelete(userName);
	}

	@Override
	public boolean updatePassward(Account account) {
		return accountDao.doUpdate(account);
	}

	@Override
	public boolean addUser(Account account) {
		return accountDao.doInsert(account);
	}
}
