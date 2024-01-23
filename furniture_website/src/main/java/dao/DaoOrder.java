package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Order;
import model.OrderItem;

public class DaoOrder implements IDao<Order> {

	@Override
	public List<Order> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order selectByID(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertAll(ArrayList<Order> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Order t) {
		int check = 0;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "insert into Orders (orderID,shippingCost,status) values (?,?,?) ";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getId());
			st.setFloat(2, (float) 30000.0);
			st.setString(3, t.getStatus());

			// 3; thuc thi cau lenh sql
			check = st.executeUpdate();

			String sql2 = "insert into OrderDetails (OrderID,productID,quanlity,totalAmount) values (?,?,?,?) ";

			PreparedStatement st2 = con.prepareStatement(sql2);
			for (OrderItem o : t.getListOrderItem()) {

				st2.setString(1, t.getId());
				st2.setString(2, o.getProduct().getId());
				st2.setInt(3, o.getQuality());
				st2.setDouble(4, o.getPrice());

				check = st2.executeUpdate();
				if (check <= 0) {
					return false;
				}
			}
			// 4: xu ly ket qua tra ve

			// 5: ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;
	}

	@Override
	public boolean deleteAll(ArrayList<Order> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Order t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Order t) {
		// TODO Auto-generated method stub
		return false;
	}

}
