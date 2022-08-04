package pojo;

public class User {
	private String name;
	private String password;
	private String permission;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + ", permission=" + permission + "]";
	}
	
	

}
