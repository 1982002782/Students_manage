package pojo;

public class Classes {
	private String Cno;
	private Dept dept;
	public String getCno() {
		return Cno;
	}
	public void setCno(String cno) {
		Cno = cno;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Class [Cno=" + Cno + ", dept=" + dept + "]";
	}
	
	

}
