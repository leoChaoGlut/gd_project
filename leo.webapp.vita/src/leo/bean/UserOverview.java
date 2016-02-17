package leo.bean;

public class UserOverview {
	private String email;
	private String userName;
	private Short age;
	private String avatar;
	private Short seniority;
	private String skillName;

	public UserOverview() {
		// TODO Auto-generated constructor stub
	}

	// 添加的方法
	public void addSkillName(String newSkillName) {
		this.skillName += "," + newSkillName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Short getAge() {
		return age;
	}

	public void setAge(Short age) {
		this.age = age;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Short getSeniority() {
		return seniority;
	}

	public void setSeniority(Short seniority) {
		this.seniority = seniority;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	@Override
	public String toString() {
		return "UserPreview [email=" + email + ", userName=" + userName + ", age=" + age + ", avatar=" + avatar
				+ ", seniority=" + seniority + ", skillName=" + skillName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if (obj instanceof UserOverview) {
			UserOverview otherUserPreview = (UserOverview) obj;
			return this.email.equals(otherUserPreview.getEmail());
		} else {
			return false;
		}
	}

}
