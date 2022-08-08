package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User_Admin;
import pojo.User_Students;

public interface UserDao {
	
	public User_Admin queryAdminToLogin(@Param("username")String username,@Param("password")String password); //�����жϹ���Ա�ĵ�¼
	
	public User_Students queryStudentToLogin(@Param("Sno")String Sno,@Param("password")String password); //�����ж�ѧ���ĵ�¼
	
	public List<User_Admin> queryAllAdmins();
	
	
	
	
	
	

}