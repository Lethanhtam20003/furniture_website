package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;
import model.CartItem;
import model.Factory;
import model.Product;

public class DaoCart implements IDao<Cart> {
	private String idAcount;

	String tableName = "CartItem";
	String cartID = "cartID";
	String accountID = "accountID";
	String shppingCost = "shppingCost";
	String totalPriceSelected = "totalPriceSelected";

	public DaoCart() {
	}

	@Override
	public List<Cart> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart selectByID(String t) {
		Cart p = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from Cart where accountID like ? ";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next() == false) {
				p = new Cart("c" + System.currentTimeMillis(), t, rs.getFloat("shppingCost"),
						rs.getFloat("totalPriceSelected"));
			}
			if (p == null)
				return null;
			// lan 2
			String sql2 = "select * from CartDetails where cartID like ? ";
			PreparedStatement st2 = con.prepareStatement(sql2);
			st.setString(1, p.getCartID());

			while (rs.next() == false) {
				p.getListCartItem().add(new CartItem(rs.getString("productID"), rs.getInt("qualityProduct"),
						rs.getDouble("price"), rs.getBoolean("isGift"), rs.getBoolean("isAvailable")));
			}

			// : ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return p;
	}

	@Override
	public boolean insertAll(ArrayList<Cart> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Cart> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

	public static void main(String[] args) {
		System.out.println(new DaoCart().selectByID("user001"));
	}

}
