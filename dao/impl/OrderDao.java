package dao.impl;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import common.ConnectDB;
import dao.BaseDao;
import data.SalesDepartment.Order;

public class OrderDao implements BaseDao<Order, String>{

	@Override
	public boolean doInsert(Order t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "insert into table 销售部_订单 values(?, ?, ?, ?, ?, ?, ?, ?)";
		int num = 0;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t.getNumber());
			ps.setString(2, t.getType());
			ps.setDate(3, (Date) t.getDate());
			ps.setString(4, t.getClient());
			ps.setString(5, t.getStaff());
			ps.setFloat(6, t.getTotalPrice());
			ps.setString(7, t.getStatus());
			ps.setFloat(8, t.getPendingPayment());
			num = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("插入错误");
		}
		db.close();
		return num != 0;
	}

	@Override
	public boolean doDelete(String t) {
		return false;
	}

	@Override
	public boolean doUpdate(Order t) {
		return false;
	}

	@Override
	public boolean doExistMul(Order t) {
		return false;
	}

	@Override
	public boolean doExist(String t) {
		return findById(t) != null;
	}

	@Override
	public Order findById(String t) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 销售部_订单 where 订单号=?";
		Order order = null;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, t);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				Order tmp = new Order();
				tmp.setNumber(result.getString(1));
				tmp.setType(result.getString(2));
				tmp.setDate(result.getDate(3));
				tmp.setClient(result.getString(4));
				tmp.setStaff(result.getString(5));
				tmp.setTotalPrice(result.getFloat(6));
				tmp.setStatus(result.getString(7));
				tmp.setPendingPayment(result.getFloat(8));
			}
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("查询订单失败");
		}
		return order;
	}

	@Override
	public List<Order> findAll() {
		return null;
	}
	
	public List<Order> findByStaff(String staff) {
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 销售部_订单 where 销售员编号=?";
		List<Order> list = new ArrayList<Order>();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, staff);
			ResultSet result = ps.executeQuery();
			while (result.next()) {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("按照销售员编号查询订单失败");
		}
		db.close();
		return list;
	}

}
