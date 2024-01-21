package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.CartItem;

public class DaoCartItem implements IDao<CartItem> {

	String tableName = "CartDetails";
	String cartID = "cartID";
	String productID = "productID";
	String qualityProduct = "qualityProduct";
	String price = "price";
	String isGift = "isGift";
	String isAvailable = "isAvailable";

	String id;

	public DaoCartItem(String id) {
		this.id = id;
	}

	@Override
	public List<CartItem> selectAll() {
		List<CartItem> res = new ArrayList<CartItem>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong prepareStatement
			String sql = "select * from " + tableName + " where " + cartID + " like " + id;
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {

			}
			// 5: ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public CartItem selectByID(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertAll(ArrayList<CartItem> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(CartItem t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<CartItem> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(CartItem t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(CartItem t) {
		// TODO Auto-generated method stub
		return false;
	}
}
