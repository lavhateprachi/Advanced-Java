package pojos;

public class User {
	private String name;
	private String Pass;
	private int age;
	
	
	public User(String name, String pass) {
		super();
		this.name = name;
		Pass = pass;
	}

	public User() {
		super();
	}

	public User(String name, String pass, int age) {
		super();
		this.name = name;
		Pass = pass;
		this.age = age;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", Pass=" + Pass + ", age=" + age + "]";
	}

}
