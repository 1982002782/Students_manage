package pojo;

public class Dept {
	private String Dno;
	private String name;
	public String getDno() {
		return Dno;
	}
	public void setDno(String dno) {
		Dno = dno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Dept [Dno=" + Dno + ", name=" + name + "]";
	}

	
}
