package cn.liandi.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

import cn.liandi.entity.RegisterEntity;
import cn.liandi.util.DBHelper;

/**
 * Title:UserDao Description:UserDao Company:LIANDI
 * 
 * @author shatong
 * @date 2016/12/29 14:23:43
 */

public class UserDao {
	/*
	 * 用户登陆
	 */
	public Boolean Login(String username, String password) {
		String sql = "select * from register_info where username=? and password=?";
		Boolean result = false;
		boolean b = DBHelper.isExist(sql, username, password);
		try {
			while (b == true) {
				result = true;
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/*
	 * 根据用户名查询用户信息
	 */
	public RegisterEntity UserSelect(String username) {
		RegisterEntity e = null;
		String sql = "select * from register_info where username=?";
		ResultSet rs = DBHelper.executeQuery(sql, username);
		try {
			while (rs.next()) {
				e = new RegisterEntity();
				e.setUserid(rs.getInt(1));
				e.setUsername(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setRealname(rs.getString(4));
				e.setTelephone(rs.getString(5));
				e.setEmail(rs.getString(6));
				e.setHomeaddress(rs.getString(7));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return e;
	}
	
	
	/*
	 * 根据用户ID查询用户信息
	 */
	
	public RegisterEntity UserSelectById(int userid) {
		RegisterEntity e = null;
		String sql = "select * from register_info where userid=?";
		ResultSet rs = DBHelper.executeQuery(sql, userid);
		try {
			while (rs.next()) {
				e = new RegisterEntity();
				e.setUserid(rs.getInt(1));
				e.setUsername(rs.getString(2));
				e.setPassword(rs.getString(3));
				e.setRealname(rs.getString(4));
				e.setTelephone(rs.getString(5));
				e.setEmail(rs.getString(6));
				e.setHomeaddress(rs.getString(7));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return e;
	}

	/*
	 * 用户信息修改
	 */
	public boolean editUser(RegisterEntity rEntity) throws SQLException {
		boolean b = false;
		Connection conn = (Connection) new DBHelper().getMySqlConnection();
		String sql = "UPDATE  register_info SET username=?,PASSWORD=?,realname=?,"
				+ "telephone=?,email=?,homeaddress=? WHERE userid=? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try {
			pstmt.setString(1, rEntity.getUsername());
			pstmt.setString(2, rEntity.getPassword());
			pstmt.setString(3, rEntity.getRealname());
			pstmt.setString(4, rEntity.getTelephone());
			pstmt.setString(5, rEntity.getEmail());
			pstmt.setString(6, rEntity.getHomeaddress());
			pstmt.setInt(7, rEntity.getUserid());
			int i = pstmt.executeUpdate();
			System.out.print(i);
			if (i > 0)
				b = true;
			else
				b = false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}

	// 测试数据库连接
	public static void main(String[] args) {
		UserDao userDao = new UserDao();
		//boolean b = userDao.Login("ab", "ab");
		RegisterEntity rEntity = new RegisterEntity();
		boolean b = false;
		try {
			rEntity.setUsername("asd");
			rEntity.setPassword("asd");
			rEntity.setRealname("asd");
			rEntity.setTelephone("123");
			rEntity.setEmail("6@qq.com");
			rEntity.setHomeaddress("中国");
			rEntity.setUserid(1);
			b = userDao.editUser(rEntity);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//RegisterEntity entity = new RegisterEntity();
		//entity = userDao.UserSelect("ab");
		System.out.println("结果为:" + b);
//		System.out.println("a地址为:" + entity.getHomeaddress());
	}
}
