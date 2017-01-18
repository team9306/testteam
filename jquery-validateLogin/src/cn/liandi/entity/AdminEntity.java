package cn.liandi.entity;

/**
 * Title:AdminEntity 
 * Description:AdminEntity 
 * Company:LIANDI
 * @author shatong
 * @date 2017/01/04 14:13:16
 */

public class AdminEntity {
	private int adminid;
	private String adminname;
	private String password;

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AdminEntity(int adminid, String adminname, String password) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.password = password;
	}

	public AdminEntity() {
		super();
	}
}
