package dao;

import java.util.List;

import pojo.Student;

public interface StudentDao  {
	public List<Student> queryAllStudents();  //查找所有的学生记录
	
	public Student queryStudentBySno(String Sno);  //根据学号查找学生信息
	
	public int updateStudentInformation(Student stu);  //更新学生信息
	

}
