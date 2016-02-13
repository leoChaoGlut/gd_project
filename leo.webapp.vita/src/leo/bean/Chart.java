package leo.bean;
/**
 * VitaChart entity. @author MyEclipse Persistence Tools
 */

public class Chart implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer userId;
	private String json;
	private Short type;

	// Constructors

	/** default constructor */
	public Chart() {
	}

	/** full constructor */
	public Chart(Integer userId, String json, Short type) {
		this.userId = userId;
		this.json = json;
		this.type = type;
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

	public String getJson() {
		return this.json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public Short getType() {
		return this.type;
	}

	public void setType(Short type) {
		this.type = type;
	}

}