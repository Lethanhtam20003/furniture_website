package dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Account;

public class DaoAccount implements IDao<Account> {
	List<Account> list = new ArrayList<Account>();

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

	public Account checkAccountExist(String user) {
		try {
			// Tạo kết nối đến JDBC
			Connection connection = JDBCUtil.getConnection();

			// Tạo đối tượng prepastatement
			String sql = "select * from Account\n" + "where [accountName]= ?";
			PreparedStatement ps;
			ps = connection.prepareStatement(sql);
			ps.setString(1, user);
			// Thực thi câu lệnh
			ResultSet rs = ps.executeQuery();
			// Xử lý kết quả trả về
			while (rs.next()) {
				Account a = new Account();
				a.setAccountID(rs.getString(1));
				a.setAccountName(rs.getString(2));
				a.setPassword(rs.getString(3));
				a.setFirstName(rs.getString(4));
				a.setLastName(rs.getString(5));
				a.setEmaill(rs.getString(6));
				a.setBirthday(rs.getDate(7));
				a.setGender(rs.getString(8));
				a.setPhoneNum(rs.getString(9));
				a.setAddressAccount(rs.getString(10));
				a.setAddressOrder(rs.getString(11));
				a.setCreateAt(rs.getDate(12));
				a.setLastLogin(rs.getDate(13));
				return a;
				// ngắt kết nối\
//				JDBCUtil.closeConnection(connection);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void register(String user, String pass, String fName, String lName, String email,String birthday,String gender,String phoneNum,
				String addressAcount,String addressOrder) {
		try {
			// Tạo kết nối đến JDBC
			Connection connection = JDBCUtil.getConnection();
			String idAccount = addId(connection);

			// Tạo đối tượng prepastatement
			String sql = "insert into Account(accountID,accountName,password,firstName,lastName,"
					+ "email,birthday,gender,phoneNum,addressAccount,addressOrder,createAt,lastLogin)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps;
			ps = connection.prepareStatement(sql);
			ps.setString(1, idAccount);
			ps.setString(2, user);
			ps.setString(3, pass);
			ps.setString(4, fName);
			ps.setString(5, lName);
			ps.setString(6, email);
			ps.setString(7, birthday);
			ps.setString(8, gender);
			ps.setString(9, phoneNum);
			ps.setString(10, addressAcount);
			ps.setString(11, addressOrder);
			ps.setTimestamp(12, new Timestamp(new Date().getTime()));
			ps.setTimestamp(13, null );
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String addId(Connection connection) throws SQLException {
		String sql = "SELECT COUNT(*) FROM Account";
		try(PreparedStatement ps = connection.prepareStatement(sql)){
			try(ResultSet rs = ps.executeQuery()){
				if(rs.next()) {
					int count = rs.getInt(1)+1;
					return "acc"+count;
				}
			}
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
