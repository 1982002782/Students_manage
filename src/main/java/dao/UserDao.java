package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User_Admin;
import pojo.User_Students;

public interface UserDao {
	
	public User_Admin queryAdminToLogin(@Param("username")String username,@Param("password")String password); //用于判断管理员的登录
	
	public User_Students queryStudentToLogin(@Param("Sno")String Sno,@Param("password")String password); //用于判断学生的登录
	
	public List<User_Admin> queryAllAdmins();
	
	
	
	
	
	

}
