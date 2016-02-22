package leo.bean;

/**
 * VitaMidUserSkill entity. @author MyEclipse Persistence Tools
 */

public class UserSkill implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Short skillId;

	// extra field
	private String skillName;

	// Constructors

	/** default constructor */
	public UserSkill() {
	}

	/** full constructor */

	// Property accessors

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	public Short getSkillId() {
		return this.skillId;
	}

	public void setSkillId(Short skillId) {
		this.skillId = skillId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "MidUserSkill [userId=" + userId + ", skillId=" + skillId + ", skillName=" + skillName + "]";
	}

}