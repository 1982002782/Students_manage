package service;

import java.util.List;

import pojo.Student;

public interface StudentService {
	
	public List<Student> queryAllStudents();  //查找所有的学生记录
	
	public Student queryStudentBySno(String Sno);
	
	public int updateStudentInformation(Student stu);

}
