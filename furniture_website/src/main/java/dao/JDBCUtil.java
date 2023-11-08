package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
	public static void main(String[] args) {
		String connectionUrl = "jdbc:sqlserver://LAPTOPFK:1433;" + "database=thuchanh2;" + "user=sa;"
				+ "password=123456789;" + "encrypt=false;" + "trustServerCertificate=false;" + "loginTimeout=30;";

		try (Connection connection = DriverManager.getConnection(connectionUrl);) {
			System.out.println("ket noi thanh cong");
		}
		// Handle any errors that may have occurred.
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
