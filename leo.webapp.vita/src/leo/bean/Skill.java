package leo.bean;

/**
 * VitaSkill entity. @author MyEclipse Persistence Tools
 */

public class Skill implements java.io.Serializable {

	// Fields

	private Short id;
	private String name;
	private Short parentId;

	// Constructors

	/** default constructor */
	public Skill() {
	}

	/** full constructor */
	public Skill(String name, Short parentId) {
		this.name = name;
		this.parentId = parentId;
	}

	// Property accessors

	public Short getId() {
		return this.id;
	}

	public void setId(Short id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Short getParentId() {
		return this.parentId;
	}

	public void setParentId(Short parentId) {
		this.parentId = parentId;
	}

	@Override
	public String toString() {
		return "Skill [id=" + id + ", name=" + name + ", parentId=" + parentId + "]";
	}

}