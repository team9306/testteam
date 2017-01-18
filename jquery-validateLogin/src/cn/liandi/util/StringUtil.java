package cn.liandi.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import cn.liandi.util.DBHelper;
/**
 * 字符串工具类
 */
public class StringUtil {
	public static Random random = new Random();
	/**
	 * 获取当前时间字符串
	 * @return 当前时间字符串
	 */
	public static String getStringTime(){
		Date date = new Date();//获取当前系统时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");//设置格式化格式
		return sdf.format(date);//返回格式化后的时间
	}

	/**
	 * 验证字符串的有效性
	 * @param s 验证字符串
	 * @return 是否有效的布尔值
	 */
	public static boolean validateString(String s){
		if(s != null && s.trim().length() > 0){//如果字符串不为空返回true
			return true;
		}
		return false;//字符串为空返回false
	}
	/**
	 * 验证浮点对象的有效性
	 * @param f 浮点对象
	 * @return 是否有效的布尔值
	 */
	public static boolean validateFloat(Float f){
		try {
			if(f != null && f > 0){
				return true;
			}
		} catch (Exception e) {}
		return false;
	}
	
	/**
	 * 生成随机号
	 * @return 字符串随机号
	 */
	public static String createId(){
		StringBuffer sb = new StringBuffer();//定义字符串对象
		sb.append(getStringTime());//向字符串对象中添加当前系统时间
		for (int i = 0; i < 3; i++) {//随机生成3位数
			sb.append(random.nextInt(9));//将随机生成的数字添加到字符串对象中
		}
		return sb.toString();//返回字符串
	}
	
	//生成长度为5位的ID号备用
	public String createIntID(String s){
		String temp="";
		String ran=Double.toString(Math.random()*100000);
		if (ran.length()>=5)
		  ran=ran.substring(0,5);
		String sql="";		
		if (s.equals("c_size"))
			sql="select * from c_size where c_size_id=?";
		else if (s.equals("c_color"))
			sql="select * from c_color where c_color_id=?";
		else if (s.equals("s_billitem"))
			sql="select * from s_billitem where s_billitem_id=?";
		if (s.equals("c_goods_id"))
			sql="select * from c_size where c_goods_id=?";
		else if (s.equals("user"))
			sql="select * from c_user where c_user_id=?";
		else if (s.equals("s_bill"))
			sql="select * from s_bill where s_bill_id=?";	
		try{
			if (!DBHelper.isExist(sql,ran))
				temp=ran;
			else{
				createIntID(s);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return temp;
	}
}
