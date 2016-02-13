package leo.bean;
/**
 * VitaRole entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private Short id;
	private String name;

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** full constructor */
	public Role(String name) {
		this.name = name;
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

}