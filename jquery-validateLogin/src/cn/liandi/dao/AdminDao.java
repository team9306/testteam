package cn.liandi.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import cn.liandi.entity.RegisterEntity;
import cn.liandi.util.DBHelper;

/**
 * Title:UserDao 
 * Description:UserDao 
 * Company:LIANDI
 * @author shatong
 * @date 2016/12/29 14:23:43
 */

public class AdminDao {
	/*
	 * 管理员登陆
	 */
	public Boolean adminLogin(String adminname, String password) {
		String sql = "select * from admin where adminname=? and password=?";
		Boolean result = false;
		boolean b = DBHelper.isExist(sql, adminname, password);
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
	 * 所有用户信息查询
	 */
	public List<RegisterEntity> allUserSelect(){
		RegisterEntity e = null;
		List<RegisterEntity> list = new ArrayList<RegisterEntity>();
		String sql = "select * from register_info ";
		ResultSet rs = DBHelper.executeQuery(sql);
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
				list.add(e);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		System.out.println();
		return list;
	}

	/*
	 * 管理员修改用户信息
	 */
	@SuppressWarnings("static-access")
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

	
	/*
	 * 管理员删除用户
	 */
	
	public boolean deleteUser(int userid){
		boolean b = false;
		int result = -1;
		String sql = "delete from register_info where userid = ?";
		result = DBHelper.executeNonQuery(sql,userid);
		if (result==1) {
			b = true;
		}
		return b;
	}
	
	// 测试数据库连接
	public static void main(String[] args) {
		AdminDao adminDao = new AdminDao();
		//boolean b = userDao.Login("ab", "ab");
//		RegisterEntity rEntity = new RegisterEntity();
		boolean b = adminDao.deleteUser(24);
		//RegisterEntity entity = new RegisterEntity();
		//entity = userDao.UserSelect("ab");
		System.out.println("结果为:" + b);
//		System.out.println("a地址为:" + entity.getHomeaddress());
	}
}
