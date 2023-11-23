package dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

public class JDBCUtil {
//	public static void main(String[] args) {
//		String connectionUrl = "jdbc:sqlserver://LAPTOPFK:1433;" + "database=thuchanh2;" + "user=sa;"
//				+ "password=123456789;" + "encrypt=false;" + "trustServerCertificate=false;" + "loginTimeout=30;";
//
//		try (Connection connection = DriverManager.getConnection(connectionUrl);) {
//			System.out.println("ket noi thanh cong");
//		}
//		// Handle any errors that may have occurred.
//		catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}

	public static Connection getConnection() {
		Connection c = null;
		try {
			// dang ky sql server voi driveManager
			DriverManager.registerDriver(new SQLServerDriver());

			// cac thong so
			String url = "jdbc:sqlserver://LAPTOPFK:1433;";
			String database = "database=thuchanh2;";
			String name = "user=sa;";
			String password = "password=123456789;";
			String encrypt = "encrypt=false;";
			String trustServerCertificate = "trustServerCertificate=false;";
			String loginTimeout = "loginTimeout=30;";
			String connectionUrl = url + database + name + password + encrypt + trustServerCertificate + loginTimeout;

			// tao ket noi
			c = DriverManager.getConnection(connectionUrl);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}

	public static void printInfo(Connection c) {
		try {
			if (c != null) {
				DatabaseMetaData mtdt = c.getMetaData();
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		printInfo(getConnection());
	}

	public static void closeConnection(Connection con) throws SQLException {
		// TODO Auto-generated method stub
		con.close();
	}
}
