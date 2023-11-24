package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import model.Group;
import model.Product;

public class DaoGroup implements IDao<Group> {

	@Override
	public List<Group> selectAll() {
		List<Group> res = new ArrayList<Group>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from GroupPro";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String groupID = rs.getString("groupID");
				String name = rs.getString("name");
				String content = rs.getString("name");
				Group g = new Group(groupID, name, content);
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
	public Group selectByID(String t) {
		Group res  = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from GroupPro";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String groupID = rs.getString("groupID");
				String name = rs.getString("name");
				String content = rs.getString("name");
				Group g = new Group(groupID, name, content);
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
	public boolean insertAll(ArrayList<Group> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Group t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Group> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Group t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Group t) {
		// TODO Auto-generated method stub
		return false;
	}

}
