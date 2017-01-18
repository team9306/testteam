package cn.liandi.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import cn.liandi.dao.AdminDao;
import cn.liandi.dao.UserDao;
import cn.liandi.entity.AdminEntity;
import cn.liandi.entity.RegisterEntity;

/**
 * Title:AdminAction
 * Description:AdminAction
 * Company:LIANDI  
 * @author shatong 
 * @date 2017/01/04 14:09:10
 */

public class AdminAction {
	List<RegisterEntity> list = new ArrayList<RegisterEntity>();
	AdminDao adminDao = new AdminDao();
	AdminEntity adminEntity = new AdminEntity();
	ActionContext ac = ActionContext.getContext();
    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
    private int userid;
	private int adminid;
	private String adminname;
	private String password;
	  public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
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
	//管理员登录
	public String adminLogin(){
		String result="input";
		//System.out.println("username:"+adminname+"  password:"+password);
		boolean b = adminDao.adminLogin(adminname, password);
		//System.out.println(b);
		if (b==true) {
			result="success";
			ActionContext ac = ActionContext.getContext();
		    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
		    HttpSession session = request.getSession(true);
		    session.setAttribute("_USERLOGIN_", adminname);
		}else {
			result = "error";
		}
		return result;
	}
	
	
	//所有用户信息查询
	
	public String allUserSelect(){
		String result = "input";
		list = adminDao.allUserSelect();
		if (list.size()>0) {
			result = "success";
			ActionContext ac = ActionContext.getContext();
		    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
		    request.setAttribute("_USERLIST_", list);
		}
		return result;
	}
	
	//管理员删除用户
	
	public String deleteUser(){
		String result = "input";
		boolean b = adminDao.deleteUser(userid);
		if (b) {
			result = "success";
		}
		return result;
	}
	
	//管理员查询用户具体信息
	
	public String selectUser(){
		String result = "input";
		RegisterEntity registerEntity =new RegisterEntity();
		UserDao userDao = new UserDao();
		registerEntity = userDao.UserSelectById(userid);
		if (registerEntity!=null) {
			result = "success";
			ActionContext ac = ActionContext.getContext();
		    HttpServletRequest request =(HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
		    request.setAttribute("_USERINFO_", registerEntity);
		}
		return result;
	}

}