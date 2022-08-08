package service;

import java.util.List;

import pojo.Student;

public interface StudentService {
	
	public List<Student> queryAllStudents();  //�������е�ѧ����¼
	
	public Student queryStudentBySno(String Sno);
	
	public int updateStudentInformation(Student stu);

}