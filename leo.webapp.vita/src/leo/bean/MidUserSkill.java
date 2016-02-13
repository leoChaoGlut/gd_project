package leo.bean;

/**
 * VitaMidUserSkill entity. @author MyEclipse Persistence Tools
 */

public class MidUserSkill implements java.io.Serializable {

	// Fields

	private Integer id;
	private String email;
	private Short skillId;

	// Constructors

	/** default constructor */
	public MidUserSkill() {
	}

	/** full constructor */
	public MidUserSkill(String email, Short skillId) {
		this.email = email;
		this.skillId = skillId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
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

	public Short getSkillId() {
		return this.skillId;
	}

	public void setSkillId(Short skillId) {
		this.skillId = skillId;
	}

}