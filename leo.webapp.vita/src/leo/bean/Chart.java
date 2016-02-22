package leo.bean;

/**
 * VitaChart entity. @author MyEclipse Persistence Tools
 */

public class Chart implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private String json;
	private Short typeId;
	private Short hasDeleted;

	// 额外需要的字段
	private String typeName;

	// Constructors

	/** default constructor */
	public Chart() {
	}

	// Property accessors

	

	public String getTypeName() {
		return typeName;
	}

	public Chart(Integer id, String json, Short hasDeleted) {
		this.id = id;
		this.json = json;
		this.hasDeleted = hasDeleted;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
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
		return "Chart [id=" + id + ", userId=" + userId + ", json=" + json + ", typeId=" + typeId + ", hasDeleted="
				+ hasDeleted + ", typeName=" + typeName + "]";
	}

}