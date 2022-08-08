package dao;

import java.util.List;

import pojo.Student;

public interface StudentDao  {
	public List<Student> queryAllStudents();  //�������е�ѧ����¼
	
	public Student queryStudentBySno(String Sno);  //����ѧ�Ų���ѧ����Ϣ
	
	public int updateStudentInformation(Student stu);  //����ѧ����Ϣ
	

}