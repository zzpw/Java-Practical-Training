package common;

import java.sql.*;

public class ConnectDB {
	private Connection conn;
	private final static String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final static String dbURL = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=食品企业生产管理系统";
	private final static String userName = "sa";
	private final static String userPswd = "123456789";
	
	public ConnectDB() {
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
				System.out.println("数据库连接已关闭");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("关闭数据库连接失败");
			}
		}
	}
	
//	public static void main(String[] args) {
//		ConnectDB db = new ConnectDB();
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
