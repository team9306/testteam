package cn.liandi.dao;

import cn.liandi.entity.RegisterEntity;
import cn.liandi.util.DBHelper;

/**
 * Title:RegisterDao
 * Description:TODO
 * Company:LIANDI  
 * @author shatong 
 * @date 2016/12/30 11:25:10
 */

public class RegisterDao {
	public boolean register(RegisterEntity rEntity){
		boolean b = false;
		int result = -1;
		String sql="insert into register_info(username,password,realname,telephone,email,homeaddress) values(?,?,?,?,?,?)";
		result = DBHelper.executeNonQuery(sql, rEntity.getUsername(),
				rEntity.getPassword(),rEntity.getRealname(),rEntity.getTelephone(),
				rEntity.getEmail(),rEntity.getHomeaddress());
		try {
			if(result==0){
				b=false;
			}else {
				b=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	
	public static void main(String[] args) {
		RegisterDao r = new RegisterDao();
		RegisterEntity registerEntity = new RegisterEntity();
		registerEntity.setUsername("z");
		registerEntity.setPassword("z");
		registerEntity.setRealname("zx");
		registerEntity.setEmail("q@qq.com");
		registerEntity.setHomeaddress("南京雨花台");
		registerEntity.setTelephone("123");
		boolean b =r.register(registerEntity);
		System.out.println("结果为:"+b);
	}
}


