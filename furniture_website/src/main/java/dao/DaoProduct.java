package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import data.Storage;
import model.Factory;
import model.ProDecoration;
import model.ProDecorativeLights;
import model.ProHandmade;
import model.ProSanitaryEquiment;
import model.Product;

public class DaoProduct implements IDao<Product> {

	List<Product> list = new ArrayList<Product>();
	private String id;
	private String productName;
	private String categoryID;
	private String groupID;
	private String producer;
	private String price;
	private String type;
	private String decription;
	private String QuallityInStorage;
	private String status;
	private String packeged;
	private String brandOrigin;
	private String meterial;
	private String size;
	private String wattage;
	private String color;
	private String thickness;
	private String space;
	private String design;
	private String timeToUse;
	private String imgPath;
	private String couponID;
	private Date dateAdded;

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
				double price = rs.getDouble("price");
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
				String imgPath = rs.getString("imgPath");
				String couponID = rs.getString("coupon");
				String dateAdded = rs.getString("dateAdded");

				// ep kieu
				double priceThen = (price);
				int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);
				SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");

				Date dateAddedThen = Date.valueOf(dateAdded);

				Product p = Factory.createProduct(id, productName, categoryID, groupID, producer, priceThen, type,
						decription, QuallityInStorageThen, status, packeged, brandOrigin, meterial, size, wattage,
						color, thickness, space, design, timeToUse, imgPath, couponID, dateAddedThen);
				if (p != null) {
					res.add(p);
				}

			}
			// 5: ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
//			st.setString(1, t);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next() == false) {
				id = rs.getString("productID");
				productName = rs.getString("productName");
				categoryID = rs.getString("categoryID");
				groupID = rs.getString("groupID");
				producer = rs.getString("producer");
				price = rs.getString("price");
				type = rs.getString("type");
				decription = rs.getString("decription");
				QuallityInStorage = rs.getString("qualityInStorage");
				status = rs.getString("status");
				packeged = rs.getString("packeged");
				brandOrigin = rs.getString("brandOrigin");
				meterial = rs.getString("meterial");
				size = rs.getString("size");
				wattage = rs.getString("wattage");
				color = rs.getString("color");
				thickness = rs.getString("thicknessWood");
				space = rs.getString("space");
				design = rs.getString("design");
				timeToUse = rs.getString("timeToUse");
				imgPath = rs.getString("imgPath");
				couponID = rs.getString("couponID");
				dateAdded = rs.getDate("dateAdded");
				// ep kieu

			}
			double priceThen = Double.parseDouble(price);
			int QuallityInStorageThen = Integer.parseInt(QuallityInStorage);
			p = Factory.createProduct(id, productName, categoryID, groupID, producer, priceThen, type, decription,
					QuallityInStorageThen, status, packeged, brandOrigin, meterial, size, wattage, color, thickness,
					space, design, timeToUse, imgPath, couponID, dateAdded);

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
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

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

			} else if (t.getType().equalsIgnoreCase("furniture")) {
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
			st.setString(21, t.getImgPath());
			st.setDate(22, t.getDateAdded());
			// 3; thuc thi cau lenh sql
			check = st.executeUpdate();
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
			String sql = "delete from Product where productID like '?'";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getId());
			// 3; thuc thi cau lenh sql
			check = st.executeUpdate();

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
//			"insert into Product(productID,productName,categoryID,groupID,producer,price,"
//			+ "type,decription,qualityInStorage,status,packeged,brandOrigin,meterial,size,wattage,"
//			+ "color,thicknessWood,space,design,timeToUse)"
//			+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
			String sql = "update Product" + "set productID = ?" + ",productName = ?" + ",categoryID = ?"
					+ ",groupID  = ?" + ",producer  = ?" + ",price = ?" + ",type = ?" + ",decription = ?"
					+ ",qualityInStorage = ?" + ",status = ?" + ",packeged  = ?" + ",brandOrigin  = ?"
					+ ",meterial  = ?" + ",size  = ?" + ",wattage = ?" + ",color = ?" + ",thicknessWood  = ?"
					+ ",space = ?" + ",design = ?" + ",timeToUse  = ?" + ",imgPath = ?" + "where productID like '?'";

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

			} else if (t.getType().equalsIgnoreCase("furniture")) {
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
			st.setString(21, t.getImgPath());
			st.setString(22, t.getId());

			// 3; thuc thi cau lenh sql
			check = st.executeUpdate();
			// 4: xu ly ket qua tra ve

			// 5: ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;

	}

	public static void main(String[] args) {
		Storage d = new Storage();
		DaoProduct a = new DaoProduct();
		System.out.println(a.selectAll());
	}
}
