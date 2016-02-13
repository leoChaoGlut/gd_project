package leo.bean;
/**
 * VitaMidChartSkill entity. @author MyEclipse Persistence Tools
 */

public class MidChartSkill implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer chartId;
	private Short skillId;

	// Constructors

	/** default constructor */
	public MidChartSkill() {
	}

	/** full constructor */
	public MidChartSkill(Integer chartId, Short skillId) {
		this.chartId = chartId;
		this.skillId = skillId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getChartId() {
		return this.chartId;
	}

	public void setChartId(Integer chartId) {
		this.chartId = chartId;
	}

	public Short getSkillId() {
		return this.skillId;
	}

	public void setSkillId(Short skillId) {
		this.skillId = skillId;
	}

}