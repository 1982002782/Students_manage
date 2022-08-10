package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User_Admin;
import pojo.User_Students;

public interface UserService {
	public User_Admin queryAdminToLogin(@Param("name")String username,@Param("password")String password); 
	
	public User_Students queryStudentToLogin(@Param("name")String username,@Param("password")String password);
	
	public List<User_Admin> queryAllAdmins();
	
	public int updatePassword(@Param("password_1")String password_1,@Param("password_2")String password_2,@Param("username")String username);
	

}
