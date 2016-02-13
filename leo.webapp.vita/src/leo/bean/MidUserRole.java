package leo.bean;
/**
 * VitaMidUserRole entity. @author MyEclipse Persistence Tools
 */

public class MidUserRole implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private Short roleId;

	// Constructors

	/** default constructor */
	public MidUserRole() {
	}

	/** full constructor */
	public MidUserRole(Integer userId, Short roleId) {
		this.userId = userId;
		this.roleId = roleId;
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

	public Short getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Short roleId) {
		this.roleId = roleId;
	}

}