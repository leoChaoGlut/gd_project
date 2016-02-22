package leo.bean;

/**
 * CommonUser entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields
	private Integer id;
	private String email;
	private String name;
	private Short age;
	private String avatar;
	private String pwd;
	private Short seniority;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String email) {
		this.email = email;
	}

	public User(String email, String name, Short age, String avatar, String pwd, Short seniority) {
		this.email = email;
		this.name = name;
		this.age = age;
		this.avatar = avatar;
		this.pwd = pwd;
		this.seniority = seniority;
	}

	// Property accessors

	/** full constructor */
	public User(Integer id, String email, String name, Short age, String avatar, String pwd, Short seniority) {
		this.id = id;
		this.email = email;
		this.name = name;
		this.age = age;
		this.avatar = avatar;
		this.pwd = pwd;
		this.seniority = seniority;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Short getAge() {
		return this.age;
	}

	public void setAge(Short age) {
		this.age = age;
	}

	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Short getSeniority() {
		return seniority;
	}

	public void setSeniority(Short seniority) {
		this.seniority = seniority;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", name=" + name + ", age=" + age + ", avatar=" + avatar + ", pwd=" + pwd
				+ ", seniority=" + seniority + "]";
	}

}