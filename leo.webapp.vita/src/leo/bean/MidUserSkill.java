package leo.bean;

/**
 * VitaMidUserSkill entity. @author MyEclipse Persistence Tools
 */

public class MidUserSkill implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Short skillId;

	// Constructors

	/** default constructor */
	public MidUserSkill() {
	}

	/** full constructor */
	public MidUserSkill(Integer userId, Short skillId) {
		this.userId = userId;
		this.skillId = skillId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Short getSkillId() {
		return this.skillId;
	}

	public void setSkillId(Short skillId) {
		this.skillId = skillId;
	}

}