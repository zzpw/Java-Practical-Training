package dao;

import java.sql.*;

public class LoginDao {
	public boolean checkUserName(String userName) { // 判断账户是否存在
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 账户信息表  where 账户=?";
		boolean ok = false;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userName);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				ok = true;
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.close();
		return ok;
	}
	
	public boolean checkPassWard(String userName, String passward) { // 判断账户密码是否正确
		ConnectDB db = new ConnectDB();
		Connection conn = db.getConnection();
		String sql = "select* from 账户信息表 where 账户=? and 密码=?";
		boolean ok = false;
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, passward);
			ResultSet result = ps.executeQuery();
			if (result.next()) {
				ok = true;
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		db.close();
		return ok;
	}
}
