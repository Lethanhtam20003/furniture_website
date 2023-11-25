package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.Category;
import model.Group;
import model.Product;

public class DaoCategory implements IDao<Category> {
	String tablleName = "Category";
	String c1CategoryID = "categoryID";
	String c2Name = "name";
	String c3Content = "content";
	
	
	@Override
	public List<Category> selectAll() {
		List<Category> res = new ArrayList<Category>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong prepareStatement
			String sql = "select * from "+tablleName;
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String categoryID = rs.getString(c1CategoryID);
				String name = rs.getString(c2Name);
				String content = rs.getString(c3Content);
				Category g = new Category(categoryID, name, content);
				res.add(g);
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
	public Category selectByID(String t) {
		Category res = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from "+tablleName+" where "+c1CategoryID+" like '" + t + "'";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String categoryID = rs.getString(c1CategoryID);
				String name = rs.getString(c2Name);
				String content = rs.getString(c3Content);
				res = new Category(categoryID, name, content);
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
	public boolean insertAll(ArrayList<Category> arr) {
		for (Category category : arr) {
			if(!insert(category))
				return false;
		}
		return true;
	}

	@Override
	public boolean insert(Category t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Category> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Category t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Category t) {
		// TODO Auto-generated method stub
		return false;
	}

}
