package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Group;

public class DaoGroup implements IDao<Group> {
	String tablleName = "GroupPro";
	String c1groupID = "groupID";
	String c2Name = "name";
	String c3Content = "content";

	@Override
	public List<Group> selectAll() {
		List<Group> res = new ArrayList<Group>();
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong prepareStatement
			String sql = "select * from GroupPro";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String groupID = rs.getString("groupID");
				String name = rs.getString("name");
				String content = rs.getString("content");
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
		Group res = null;
		try {
			// 1: tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();

			// 2: tao doi tuong stament
			String sql = "select * from GroupPro where groupID like '" + t + "'";
			PreparedStatement st = con.prepareStatement(sql);

			// 3; thuc thi cau lenh sql
			ResultSet rs = st.executeQuery();
			// 4: xu ly ket qua tra ve
			while (rs.next()) {
				String groupID = rs.getString("groupID");
				String name = rs.getString("name");
				String content = rs.getString("name");
				res = new Group(groupID, name, content);
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
		for (Group group : arr) {
			if (!insert(group))
				return false;
		}
		return true;
	}

	@Override
	public boolean insert(Group t) {
		int check = 0;
		try {
			// 1. tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();
			// 2 tao doi tuong
			String sql = "insert into Group(groupID,name,content)";
			java.sql.Statement st = con.createStatement();

			// 3. thuc thi cau lenh sql
			check = st.executeUpdate(sql);
			// 4. xu ly ket qua tra ve

			// 5. ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;
	}

	@Override
	public boolean deleteAll(ArrayList<Group> arr) {
		for (Group group : arr) {
			if (!insert(group))
				return false;
		}
		return true;
	}

	@Override
	public boolean delete(Group t) {
		int check = 0;
		try {
			// 1. tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();
			// 2 tao doi tuong
			String sql = "";
			PreparedStatement ps = con.prepareStatement(sql);

			// 3. thuc thi cau lenh sql
			ps.executeQuery();
			// 4. xu ly ket qua tra ve
			check = ps.getUpdateCount();
			// 5. ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;
	}

	@Override
	public boolean update(Group t) {
		int check = 0;
		try {
			// 1. tao ket noi den csdl
			Connection con = JDBCUtil.getConnection();
			// 2 tao doi tuong
			String sql = "";
			PreparedStatement ps = con.prepareStatement(sql);

			// 3. thuc thi cau lenh sql
			ps.executeQuery();
			// 4. xu ly ket qua tra ve
			check = ps.getUpdateCount();
			// 5. ngat ket noi
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check > 0;
	}

}
