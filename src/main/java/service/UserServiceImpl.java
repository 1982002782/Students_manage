package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import pojo.User_Admin;
import pojo.User_Students;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	public User_Admin queryAdminToLogin(String username, String password) {
		// TODO Auto-generated method stub
		return this.userDao.queryAdminToLogin(username, password);
	}


	public User_Students queryStudentToLogin(String Sno, String password) {
		// TODO Auto-generated method stub
		return this.userDao.queryStudentToLogin(Sno, password);
	}
	
	public List<User_Admin> queryAllAdmins(){
		return this.userDao.queryAllAdmins();
	}
}
