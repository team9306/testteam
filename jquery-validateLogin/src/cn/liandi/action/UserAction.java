package cn.liandi.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import cn.liandi.dao.RegisterDao;
import cn.liandi.dao.UserDao;
import cn.liandi.entity.RegisterEntity;

/**
 * Title:UserAction
 * Description:userData
 * Company:LIANDI  
 * @author shatong 
 * @date 2016/12/29 13:41:35
 */

public class UserAction {
	RegisterDao r = new RegisterDao();
	RegisterEntity registerEntity = new RegisterEntity();
	ActionContext ac = ActionContext.getContext();
    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
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

	//用户登录
	public String userLogin(){
		String result="input";
		UserDao userDao = new UserDao();
		boolean b = userDao.Login(username, password);
		if (b==true) {
			result="success";
			ActionContext ac = ActionContext.getContext();
		    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
		    HttpSession session = request.getSession(true);
		    session.setAttribute("_USERLOGIN_", username);
		}else {
			result = "error";
		}
		return result;
	}
	//用户注册
	public String userRegister(){
		String result = "input";
		registerEntity.setUsername(username);
		registerEntity.setPassword(password);
		registerEntity.setRealname(realname);
		registerEntity.setEmail(email);
		registerEntity.setHomeaddress(homeaddress);
		registerEntity.setTelephone(telephone);
		boolean b =r.register(registerEntity);
		//System.out.println("username:"+username+"  password:"+password);
		//System.out.println("结果为:"+b);
		if (b==true) {
			result="success";
			
		    HttpSession session = request.getSession(true);
		    session.setAttribute("_USER_", registerEntity);
		}
		return result;
	}
	
	//用户信息查询
	
	public String userSelect(){
		String result = "input";
		String user = (String)request.getSession().getAttribute("_USERLOGIN_");
		//System.out.println("用户名："+user);
		UserDao userDao = new UserDao();
		registerEntity = userDao.UserSelect(user);
		if (registerEntity!=null) {
			result = "success";
			HttpSession session = request.getSession(true);
		    session.setAttribute("_USERINFO_", registerEntity);
		}
		return result;
	}
	
	//用户信息修改
	public String editUser() {
		String result = "input";
		UserDao userDao = new UserDao();
		registerEntity.setUsername(username);
		registerEntity.setPassword(password);
		registerEntity.setRealname(realname);
		registerEntity.setTelephone(telephone);
		registerEntity.setEmail(email);
		registerEntity.setHomeaddress(homeaddress);
		registerEntity.setUserid(userid);
		try {
			if (userDao.editUser(registerEntity)) {
				result = "success";
			}else{
				result = "error";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}