package cn.liandi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Title:DBHelper 
 * Description:数据库连接 
 * Company:LIANDI
 * @author shatong
 * @date 2016/12/29 13:51:42
 */

public class DBHelper {
	public static String sqlType = "MySql";// 数据库传入类型代码有MySql/Sql2005/Access/Oracle

	public static Connection getConnection(String Type) {
		Connection conn = null;
		if (Type.equals("MySql"))
			conn = getMySqlConnection();
		else if (Type.equals("Sql2005"))
			conn = getSql2005Connection();
		else if (Type.equals("Access"))
			conn = getAccessConnection();
		else if (Type.equals("Oracle"))
			conn = getOracleConnection();
		else
			System.out.println("Sorry,can't find  Driver!");
		return conn;
	}

	public static Connection getMySqlConnection() {
		Connection conn = null;
		try {
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:MySQL://127.0.0.1:3306/usersdata";
			String user = "root";
			String password = "";
			Class.forName(driver);
			if (null == conn) {
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static Connection getSql2005Connection() {
		Connection conn = null;
		try {
			String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=estoredb";
			String user = "sa";
			String password = "123456";
			Class.forName(driver).newInstance();
			if (null == conn) {
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static Connection getAccessConnection() {
		Connection conn = null;
		try {
			String driver = "sun.jdbc.odbc.JdbcOdbcDriver";
			String url = "jdbc:odbc:shopping";
			String user = "sa";
			String password = "123456";
			Class.forName(driver).newInstance();
			if (null == conn) {
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static Connection getOracleConnection() {
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "root";
			String password = "123456";
			Class.forName(driver);
			if (null == conn) {
				conn = DriverManager.getConnection(url, user, password);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 增删改【Add、Del、Update】
	 */

	public static int executeNonQuery(String sql) {
		int result = 0;
		Connection conn = null;
		Statement stmt = null;
		try {
			conn = getMySqlConnection();
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (SQLException err) {
			err.printStackTrace();
			free(null, stmt, conn);
		} finally {
			free(null, stmt, conn);
		}
		return result;
	}

	/**
	 * 增删改【Add、Delete、Update】
	 */

	public static int executeNonQuery(String sql, Object... obj) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getMySqlConnection();
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < obj.length; i++) {
				pstmt.setObject(i + 1, obj[i]);
			}
			result = pstmt.executeUpdate();
		} catch (SQLException err) {
			err.printStackTrace();
			free(null, pstmt, conn);
		} finally {
			free(null, pstmt, conn);
		}
		return result;
	}

	/**
	 * 查【Query】
	 */

	public static ResultSet executeQuery(String sql) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = getMySqlConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException err) {
			err.printStackTrace();
			free(rs, stmt, conn);
		}
		return rs;
	}

	/**
	 * 查【Query】
	 */

	public static ResultSet executeQuery(String sql, Object... obj) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getMySqlConnection();
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < obj.length; i++) {
				pstmt.setObject(i + 1, obj[i]);
			}
			rs = pstmt.executeQuery();
		} catch (SQLException err) {
			err.printStackTrace();
			free(rs, pstmt, conn);
		}
		return rs;
	}

	/**
	 * 判断记录是否存在
	 */

	public static Boolean isExist(String sql) {
		ResultSet rs = null;
		try {
			rs = executeQuery(sql);
			rs.last();
			int count = rs.getRow();
			if (count > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException err) {
			err.printStackTrace();
			free(rs);
			return false;
		} finally {
			free(rs);
		}
	}

	/**
	 * 判断记录是否存在
	 */
	public static Boolean isExist(String sql, Object... obj) {
		ResultSet rs = null;
		try {
			rs = executeQuery(sql, obj);
			rs.last();
			int count = rs.getRow();
			if (count > 0) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException err) {
			err.printStackTrace();
			free(rs);
			return false;
		} finally {
			free(rs);
		}
	}

	/**
	 * 获取查询记录的总行数
	 */

	public static int getCount(String sql) {
		int result = 0;
		ResultSet rs = null;
		try {
			rs = executeQuery(sql);
			rs.last();
			result = rs.getRow();
		} catch (SQLException err) {
			free(rs);
			err.printStackTrace();
		} finally {
			free(rs);
		}
		return result;
	}

	/**
	 * 获取查询记录的总行数
	 */
	public static int getCount(String sql, Object... obj) {
		int result = 0;
		ResultSet rs = null;
		try {
			rs = executeQuery(sql, obj);
			rs.last();
			result = rs.getRow();
		} catch (SQLException err) {
			err.printStackTrace();
		} finally {
			free(rs);
		}
		return result;
	}

	/**
	 * 释放【ResultSet】资源
	 */

	public static void free(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	/**
	 * 释放【Statement】资源
	 */
	public static void free(Statement st) {
		try {
			if (st != null) {
				st.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	/**
	 * 释放【Connection】资源
	 */

	public static void free(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	/**
	 * 释放所有数据资源
	 */

	public static void free(ResultSet rs, Statement st, Connection conn) {
		free(rs);
		free(st);
		free(conn);
	}
}