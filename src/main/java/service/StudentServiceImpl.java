package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.StudentDao;
import pojo.Student;
@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDao studentDao;
	public List<Student> queryAllStudents(){
		return this.studentDao.queryAllStudents();
	}
	
	public Student queryStudentBySno(String Sno) {
		return this.studentDao.queryStudentBySno(Sno);
	}
	
	public int updateStudentInformation(Student stu) {
		return this.studentDao.updateStudentInformation(stu);
	}

}
