package pojo;

import java.util.Date;

public class Talk {
	private Student student; //����һ��ѧ������ʹ��ѧ������talk����������
	private int number;
	private String content;
	private Date date;
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Talk [student=" + student + ", number=" + number + ", content=" + content + ", date=" + date + "]";
	}
	
	

}