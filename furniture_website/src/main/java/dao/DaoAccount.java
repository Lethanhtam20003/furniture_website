package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Account;

public class DaoAccount implements IDao<Account> {

	public Account login(String user, String pass) {
		try {
			// Tạo kết nối đến JDBC
			Connection connection = JDBCUtil.getConnection();

			// Tạo đối tượng prepastatement
			String sql = "select accountName, password from Account\n" + "where [accountName]= ?\n" + "and password =?";
			PreparedStatement ps;
			ps = connection.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			// Thực thi câu lệnh
			ResultSet rs = ps.executeQuery();
			// Xử lý kết quả trả về
			while (rs.next()) {
				return new Account(rs.getString(1), rs.getString(2));

				// ngắt kết nối\
//				JDBCUtil.closeConnection(connection);
			}
		} catch (SQLException e) {
		}
		return null;
	}

	@Override
	public List<Account> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account selectByID(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertAll(ArrayList<Account> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Account t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Account> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Account t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Account t) {
		// TODO Auto-generated method stub
		return false;
	}
}
