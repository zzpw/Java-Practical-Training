package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.ConnectDB;
import dao.BaseDao;
import dao.UserDaoBase;
import data.Client;

public class ClientDao implements UserDaoBase<Client, String>{

	@Override
	public boolean doInsert(Client t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "insert into 客户信息表  values(?, ?, ?, ?, ?, ?)";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getNumber());
			ps.setString(2, t.getName());
			ps.setString(3, t.getType());
			ps.setString(4, t.getLevel());
			ps.setInt(5, t.getCredit());
			ps.setString(6, t.getPhone());
			num = ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("插入客户信息失败");
		}
		db.close();
		return num != 0;
	}

	@Override
	public boolean doDelete(String t) {
		return false;
	}

	@Override
	public boolean doUpdate(Client t) {
		return false;
	}

	@Override
	public boolean doExistMul(Client t) {
		return false;
	}

	@Override
	public boolean doExist(String t) {
		return queryById(t) != null;
	}

	@Override
	public Client queryById(String t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 客户信息表  where 客户编号=?";
		Client client = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				client = new Client();
				client.setNumber(result.getString(1));
				client.setName(result.getString(2));
				client.setType(result.getString(3));
				client.setLevel(result.getString(4));
				client.setCredit(result.getInt(5));
				client.setPhone(result.getString(6));
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("插入客户信息失败");
		}
		db.close();
		return client;
	}
	
	@Override
	public List<Client> findAll() {
		return null;
	}

	@Override
	public List<Client> queryByName(String name) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 客户信息表  where 姓名=?";
		List<Client> list = new ArrayList<Client>();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet result = ps.executeQuery();
			while (result.next()) {
				Client client = new Client();
				client.setNumber(result.getString(1));
				client.setName(result.getString(2));
				client.setType(result.getString(3));
				client.setLevel(result.getString(4));
				client.setCredit(result.getInt(5));
				client.setPhone(result.getString(6));
				list.add(client);
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("按名称查询用户失败");
		}
		db.close();
		return list;
	}
}
