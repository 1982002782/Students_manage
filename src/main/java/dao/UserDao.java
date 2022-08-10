package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Student;
import pojo.User_Admin;
import pojo.User_Students;

public interface UserDao {
	
	public User_Admin queryAdminToLogin(@Param("name")String username,@Param("password")String password); //用于判断管理员的登录
	
	public User_Students queryStudentToLogin(@Param("name")String username,@Param("password")String password); //用于判断学生的登录
	
	public List<User_Admin> queryAllAdmins();
	
	public int updatePassword(@Param("password_1")String password_1,@Param("password_2")String password_2,@Param("username")String username);
	
	
	
	
	

}
