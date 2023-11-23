package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.Product;
import model.ProductFactory;

public class DaoProduct implements IDao<Product> {

	List<Product> list = new ArrayList<Product>();

	public DaoProduct() {
		list = selectAll();
	}

	@Override
	public List<Product> selectAll() {
		// TODO Auto-generated method stub
		List<Product> res = new ArrayList<Product>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String id = rs.getString("productID");
				String productName = rs.getString("productName");
				String categoryID = rs.getString("categoryID");
				String groupID = rs.getString("groupID");
				String wattage = rs.getString("wattage");
				String producer = rs.getString("producer");
				String amount = rs.getString("amount");
				String packeged = rs.getString("packeged");
				String brandOrigin = rs.getString("brandOrigin");
				String meterial = rs.getString("meterial");
				String type = rs.getString("type");
				String color = rs.getString("color");
				String thickness = rs.getString("thickness");
				String space = rs.getString("space");
				String design = rs.getString("design");
				String timeToUse = rs.getString("timeToUse");
				String price = rs.getString("price");
				String decription = rs.getString("decription");
				String status = rs.getString("status");
				String QuallityInStorage = rs.getString("quallityInStorage");

				// ep kieu
				double amountThen = Double.parseDouble(amount);
				int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);

				Product p = ProductFactory.createProduct(id, productName, categoryID, groupID, wattage, producer,
						amountThen, packeged, brandOrigin, meterial, type, color, thickness, space, design, timeToUse,
						price, decription, status, QuallityInStorageThen);
				res.add(p);

			}
			// : ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public Product selectByID(String t) {
		Product p = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String id = rs.getString("productID");
				String productName = rs.getString("productName");
				String categoryID = rs.getString("categoryID");
				String groupID = rs.getString("groupID");
				String wattage = rs.getString("wattage");
				String producer = rs.getString("producer");
				String amount = rs.getString("amount");
				String packeged = rs.getString("packeged");
				String brandOrigin = rs.getString("brandOrigin");
				String meterial = rs.getString("meterial");
				String type = rs.getString("type");
				String color = rs.getString("color");
				String thickness = rs.getString("thickness");
				String space = rs.getString("space");
				String design = rs.getString("design");
				String timeToUse = rs.getString("timeToUse");
				String price = rs.getString("price");
				String decription = rs.getString("decription");
				String status = rs.getString("status");
				String QuallityInStorage = rs.getString("quallityInStorage");

				// ep kieu
				double amountThen = Double.parseDouble(amount);
				int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);

				p = ProductFactory.createProduct(id, productName, categoryID, groupID, wattage, producer, amountThen,
						packeged, brandOrigin, meterial, type, color, thickness, space, design, timeToUse, price,
						decription, status, QuallityInStorageThen);

			}
			// : ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return p;
		// TODO Auto-generated method stub

	}

	@Override
	public boolean insert(Product t) {
		int check =0;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(0, "");
			// 3; thuc thi cau lenh sql
			check =st.executeUpdate(sql);
			// 4: xu ly ket qua tra ve
			
			// : ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check>0;
		// TODO Auto-generated method stub

	}

	@Override
	public boolean insertAll(ArrayList<Product> arr) {
		return false;
		// TODO Auto-generated method stub

	}

	@Override
	public boolean delete(Product t) {
		return false;
		// TODO Auto-generated method stub

	}

	@Override
	public boolean deleteAll(ArrayList<Product> arr) {
		return false;
		// TODO Auto-generated method stub

	}

	@Override
	public boolean update(Product t) {
		return false;
		// TODO Auto-generated method stub

	}

	public void getDataListProduct(Map<String, Product> listProduct) {
		// TODO Auto-generated method stub
		list = selectAll();
		for (Product p : list) {
			listProduct.put(p.getId(), p);
		}
	}

}
