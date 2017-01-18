package cn.liandi.entity;


/**
 * Title:RegisterEntity
 * Description:RegisterEntity
 * Company:LIANDI  
 * @author shatong 
 * @date 2016/12/30 11:22:25
 */

public class RegisterEntity {
	private int userid;
	private String username;
	private String password;
	private String realname;
	private String telephone;
	private String email;
	private String homeaddress;
	
	
	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRealname() {
		return realname;
	}


	public void setRealname(String realname) {
		this.realname = realname;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getHomeaddress() {
		return homeaddress;
	}


	public void setHomeaddress(String homeaddress) {
		this.homeaddress = homeaddress;
	}

	
	public RegisterEntity(int userid, String username, String password, String realname, String telephone, String email,
			String homeaddress) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.telephone = telephone;
		this.email = email;
		this.homeaddress = homeaddress;
	}


	public RegisterEntity() {
		super();
	}
	
}
