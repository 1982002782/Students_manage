package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User_Admin;
import pojo.User_Students;

public interface UserService {
	public User_Admin queryAdminToLogin(@Param("username")String username,@Param("password")String password); 
	
	public User_Students queryStudentToLogin(@Param("Sno")String Sno,@Param("password")String password);
	
	public List<User_Admin> queryAllAdmins();

}
