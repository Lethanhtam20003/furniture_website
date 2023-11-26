package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.ProDecoration;
import model.ProDecorativeLights;
import model.ProHandmade;
import model.ProSanitaryEquiment;
import model.Product;
import model.Factory;

public class DaoProduct implements IDao<Product> {

	List<Product> list = new ArrayList<Product>();

	public DaoProduct() {
	}

	@Override
	public List<Product> selectAll() {
		// TODO Auto-generated method stub
		List<Product> res = new ArrayList<Product>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from Product";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String id = rs.getString("productID");
				String productName = rs.getString("productName");
				String categoryID = rs.getString("categoryID");
				String groupID = rs.getString("groupID");
				String producer = rs.getString("producer");
				String price = rs.getString("price");
				String type = rs.getString("type");
				String decription = rs.getString("decription");
				String QuallityInStorage = rs.getString("qualityInStorage");
				String status = rs.getString("status");
				String packeged = rs.getString("packeged");
				String brandOrigin = rs.getString("brandOrigin");
				String meterial = rs.getString("meterial");
				String size = rs.getString("size");
				String wattage = rs.getString("wattage");
				String color = rs.getString("color");
				String thickness = rs.getString("thicknessWood");
				String space = rs.getString("space");
				String design = rs.getString("design");
				String timeToUse = rs.getString("timeToUse");

				// ep kieu
				double priceThen = Double.parseDouble(price);
				int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);

				Product p = Factory.createProduct(id, productName, categoryID, groupID, producer, priceThen, type,
						decription, QuallityInStorageThen, status, packeged, brandOrigin, meterial, size, wattage,
						color, thickness, space, design, timeToUse);
				if (p != null)
					res.add(p);

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
	public Product selectByID(String t) {
		Product p = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from Product where productID like '" + t + "'";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String id = rs.getString("productID");
				String productName = rs.getString("productName");
				String categoryID = rs.getString("categoryID");
				String groupID = rs.getString("groupID");
				String producer = rs.getString("producer");
				String price = rs.getString("price");
				String type = rs.getString("type");
				String decription = rs.getString("decription");
				String QuallityInStorage = rs.getString("qualityInStorage");
				String status = rs.getString("status");
				String packeged = rs.getString("packeged");
				String brandOrigin = rs.getString("brandOrigin");
				String meterial = rs.getString("meterial");
				String size = rs.getString("size");
				String wattage = rs.getString("wattage");
				String color = rs.getString("color");
				String thickness = rs.getString("thicknessWood");
				String space = rs.getString("space");
				String design = rs.getString("design");
				String timeToUse = rs.getString("timeToUse");

				// ep kieu
				double priceThen = Double.parseDouble(price);
				int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);

				p = Factory.createProduct(id, productName, categoryID, groupID, producer, priceThen, type, decription,
						QuallityInStorageThen, status, packeged, brandOrigin, meterial, size, wattage, color, thickness,
						space, design, timeToUse);

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
		int check = 0;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "insert into Product(productID,productName,categoryID,groupID,producer,price,"
					+ "type,decription,qualityInStorage,status,packeged,brandOrigin,meterial,size,wattage,"
					+ "color,thicknessWood,space,design,timeToUse)"
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getId());
			st.setString(2, t.getName());
			if (!(t.getCategory() == null)) {
				st.setString(3, t.getCategory().getCategoryID());
			} else
				st.setString(3, "");
			if (!(t.getGroup() == null)) {
				st.setString(4, t.getGroup().getGroupID());
			} else
				st.setString(4, "");
			st.setString(5, t.getProducer());
			st.setString(6, t.getPrice() + "");
			st.setString(7, t.getType() + "");
			st.setString(8, t.getDecription());
			st.setString(9, t.getQualityStorage() + "");
			st.setString(10, t.getStatus());
			if (t.getType().equalsIgnoreCase("decorativeLights")) {
				ProDecorativeLights p = (ProDecorativeLights) t;

				st.setString(11, p.getPackaged());
				st.setString(12, p.getBrandOrigin());
				st.setString(13, p.getMeterial());
				st.setString(14, p.getSize());
				st.setString(15, p.getWattage());
				st.setString(16, "");
				st.setString(17, "");
				st.setString(18, "");
				st.setString(19, "");
				st.setString(20, "");

			} else if (t.getType().equalsIgnoreCase("decoration ")) {
				ProDecoration p = (ProDecoration) t;
				st.setString(11, "");
				st.setString(12, "");
				st.setString(13, "");
				st.setString(14, p.getSize());
				st.setString(14, "");
				st.setString(16, p.getColor());
				st.setString(17, p.getThicknessWood());
				st.setString(18, "");
				st.setString(19, "");
				st.setString(20, "");

			} else if (t.getType().equalsIgnoreCase("sanitaryEquiment")) {
				ProSanitaryEquiment p = (ProSanitaryEquiment) t;
				st.setString(11, "");
				st.setString(12, "");
				st.setString(13, p.getMeterial());
				st.setString(14, "");
				st.setString(15, "");
				st.setString(16, "");
				st.setString(17, "");
				st.setString(18, p.getSpace());
				st.setString(19, "");
				st.setString(20, "");

			} else if (t.getType().equalsIgnoreCase("handMade")) {
				ProHandmade p = (ProHandmade) t;
				st.setString(11, "");
				st.setString(12, "");
				st.setString(13, "");
				st.setString(14, p.getSize());
				st.setString(15, "");
				st.setString(16, p.getColor());
				st.setString(17, "");
				st.setString(18, "");
				st.setString(19, p.getDesign());
				st.setString(20, p.getTimeToUse());

			}

			// 3; thuc thi cau lenh sql
			st.execute();
			// check = st.executeUpdate(sql);
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
	public boolean insertAll(ArrayList<Product> arr) {
		for (Product p : arr) {
			if (insert(p))
				return false;
		}
		return true;
	}

	@Override
	public boolean delete(Product t) {
		int check = 0;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "delete from Product where productID like '" + t.getId() + "'";

			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			check = st.executeUpdate(sql);

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
	public boolean deleteAll(ArrayList<Product> arr) {
		// TODO Auto-generated method stub
		for (Product p : arr) {
			if (delete(p))
				return false;
		}
		return true;
	}

	@Override
	public boolean update(Product t) {
		int check = 0;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "update Product" + "set productID = ?" + ",productName = ?" + ",categoryID = ?"
					+ ",groupID  = ?" + ",wattage = ?" + ",producer  = ?" + ",amount  = ?" + ",packeged  = ?"
					+ ",brandOrigin  = ?" + ",meterial  = ?" + ",type = ?" + ",color = ?" + ",thickness  = ?"
					+ ",space = ?" + ",design = ?" + ",timeToUse  = ?" + ",price = ?" + ",decription = ?"
					+ ",status = ?" + ",qualityInStorage = ?" + "where productID like '" + t.getId() + "'";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(0, t.getId());
			st.setString(1, t.getName());
			st.setString(2, t.getCategory().getCategoryID());
			st.setString(3, t.getGroup().getGroupID());
			st.setString(4, t.getProducer());
			st.setString(5, t.getPrice() + "");
			st.setString(6, t.getType() + "");
			st.setString(7, t.getDecription());
			st.setString(8, t.getQualityStorage() + "");
			st.setString(9, t.getStatus());
			if (t.getType().equalsIgnoreCase("decorativeLights")) {
				ProDecorativeLights p = (ProDecorativeLights) t;
				st.setString(10, p.getPackaged());
				st.setString(11, p.getBrandOrigin());
				st.setString(12, p.getMeterial());
				st.setString(13, p.getSize());
				st.setString(14, p.getWattage());
				st.setString(15, "");
				st.setString(16, "");
				st.setString(17, "");
				st.setString(18, "");
				st.setString(19, "");

			} else if (t.getType().equalsIgnoreCase("decoration ")) {
				ProDecoration p = (ProDecoration) t;
				st.setString(10, "");
				st.setString(11, "");
				st.setString(12, "");
				st.setString(13, p.getSize());
				st.setString(14, "");
				st.setString(15, p.getColor());
				st.setString(16, p.getThicknessWood());
				st.setString(17, "");
				st.setString(18, "");
				st.setString(19, "");

			} else if (t.getType().equalsIgnoreCase("sanitaryEquiment")) {
				ProSanitaryEquiment p = (ProSanitaryEquiment) t;
				st.setString(10, "");
				st.setString(11, "");
				st.setString(12, p.getMeterial());
				st.setString(13, "");
				st.setString(14, "");
				st.setString(15, "");
				st.setString(16, "");
				st.setString(17, p.getSpace());
				st.setString(18, "");
				st.setString(19, "");

			} else if (t.getType().equalsIgnoreCase("handMade")) {
				ProHandmade p = (ProHandmade) t;
				st.setString(10, "");
				st.setString(11, "");
				st.setString(12, "");
				st.setString(13, p.getSize());
				st.setString(14, "");
				st.setString(15, p.getColor());
				st.setString(16, "");
				st.setString(17, "");
				st.setString(18, p.getDesign());
				st.setString(19, p.getTimeToUse());

			}

			// 3; thuc thi cau lenh sql
			check = st.executeUpdate(sql);
			// 4: xu ly ket qua tra ve

			// 5: ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;

	}

}
