package leo.bean;

public class ChartOverview {
	private Integer id;
	private Short typeId;
	private String typeName;

	public ChartOverview() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Short getTypeId() {
		return typeId;
	}

	public void setTypeId(Short typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "ChartPreview [id=" + id + ", typeId=" + typeId + ", typeName=" + typeName + "]";
	}


}
