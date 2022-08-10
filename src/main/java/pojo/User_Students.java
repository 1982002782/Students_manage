package pojo;

public class User_Students {
	private Student student;
	private String password;
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User_Students [student=" + student + ", password=" + password + "]";
	}
	
	
	

}
