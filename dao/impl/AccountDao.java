package dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import common.ConnectDB;
import dao.BaseDao;
import data.Account;

public class AccountDao implements BaseDao<Account, String>{

	@Override
	public boolean doInsert(Account t) {
		return false;
	}

	@Override
	public boolean doDelete(String t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "delete from 账户信息表 where 账号=?";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t);
			num = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("删除失败");
		}
		db.close();
		return num != 0;
	}

	@Override
	public boolean doUpdate(Account t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "update 账户信息表 set 密码=? where 账号=?";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getUsername());
			ps.setString(2, t.getPassward());
			num = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("更新失败");
		}
		db.close();
		return num != 0;
	}

	@Override
	public boolean doExist(String userName) {
		return queryById(userName) != null;
	}
	
	@Override
	public boolean doExistMul(Account t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 账户信息表 where 账号=? and 密码=?";
		boolean ok = false;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getUsername());
			ps.setString(2, t.getPassward());
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				ok = true;
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		db.close();
		return ok;
	}

	@Override
	public Account queryById(String userName) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 账户信息表  where 账号=?";
		Account account = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				account = new Account(result.getString(1), result.getString(2));
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		db.close();
		return account;
	}

	@Override
	public List<Account> findAll() {
		return null;
	}
	
}
