package com.test.jsp.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class DBCon {
	Connection con = null;

	public Connection getConnection() throws SQLException, ClassNotFoundException {
		if (con != null) {
			return con;
		}
		String url = "jdbc:mysql://localhost:3307/jsp4";
		String id = "root";
		String pwd = "1001";
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection(url, id, pwd);
		return con;
	}

	public void closeCon() throws SQLException {
		if (con != null) {
			con.close();
			con = null;
		}

	}

}
