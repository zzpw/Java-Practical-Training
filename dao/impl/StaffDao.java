package dao.impl;

import java.util.List;

import dao.BaseDao;
import dao.UserDaoBase;
import data.Staff;

public class StaffDao implements UserDaoBase<Staff, String>{

	@Override
	public boolean doInsert(Staff t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doDelete(String t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doUpdate(Staff t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doExistMul(Staff t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doExist(String t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Staff queryById(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Staff> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Staff> queryByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
