package dao;

import java.sql.*;

public class ConnectDB {
	private Connection conn;
	
	public ConnectDB() {
		String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String dbURL = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=食品企业生产管理系统";
		String userName = "sa";
		String userPswd = "123456789";
		try {
			Class.forName(driverName);
			System.out.println("加载驱动成功");
		} catch (Exception e ) {
			e.printStackTrace();
			System.out.println("加载驱动失败");
		}
		try {
			conn = DriverManager.getConnection(dbURL, userName, userPswd);
			System.out.println("连接数据库成功");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("SqlServer 连接失败");
		}
	}
	
	public Connection getConnection() {
		return conn;
	}
	
	public void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("关闭数据库连接失败");
			}
		}
	}
	
//	public void showMessage() {
//		try {
//			System.out.println(conn.getClientInfo());
//			System.out.println(conn.getMetaData());
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
//	public static void main(String[] args) {
//		ConnectDB db = new ConnectDB();
//		db.showMessage();
//		String sql = "select* from 客户信息表";
//		try {
//			Statement st = db.conn.createStatement();
//			ResultSet result = st.executeQuery(sql);
//			result.next();
//			String name = result.getString(2);
//			System.out.println(name);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		db.close();
//	}
}
