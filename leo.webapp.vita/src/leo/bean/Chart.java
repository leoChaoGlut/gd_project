package leo.bean;

/**
 * VitaChart entity. @author MyEclipse Persistence Tools
 */

public class Chart implements java.io.Serializable {

	// Fields

	private Integer id;
	private String email;
	private String json;
	private Short typeId;
	private Short hasDeleted;

	// 额外需要的字段
	private String typeName;

	// Constructors

	/** default constructor */
	public Chart() {
	}

	public Chart(String email, String json, Short typeId) {
		this.email = email;
		this.json = json;
		this.typeId = typeId;
	}

	/** full constructor */

	public Chart(String email, String json, Short typeId, Short hasDeleted) {
		this.email = email;
		this.json = json;
		this.typeId = typeId;
		this.hasDeleted = hasDeleted;
	}

	// Property accessors
	
	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Short getHasDeleted() {
		return hasDeleted;
	}

	public void setHasDeleted(Short hasDeleted) {
		this.hasDeleted = hasDeleted;
	}

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

	public String getJson() {
		return this.json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public Short getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Short typeId) {
		this.typeId = typeId;
	}

	@Override
	public String toString() {
		return "Chart [id=" + id + ", email=" + email + ", json=" + json + ", typeId=" + typeId + ", hasDeleted="
				+ hasDeleted + "]";
	}

}