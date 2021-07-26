package kr.co.resume.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	private static DBConfig instance = new DBConfig();
	private DBConfig() {}
	
	public static DBConfig getInstance() {
		return instance;
	}
		
	//db
	private final String HOST = "jdbc:mysql://15.164.212.220:3306/828hjchoi";
	private final String USER = "828hjchoi";
	private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
		// 1
		Class.forName("com.mysql.jdbc.Driver");
		// 2
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}