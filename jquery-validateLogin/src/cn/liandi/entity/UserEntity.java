package cn.liandi.entity;

/**
 * Title:UserEntity 
 * Description:userEntity 
 * Company:LIANDI
 * @author shatong
 * @date 2016/12/29 14:20:02
 */

public class UserEntity {
	private int id;
	private String username;
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public UserEntity(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public UserEntity() {
		super();
	}
	
}
