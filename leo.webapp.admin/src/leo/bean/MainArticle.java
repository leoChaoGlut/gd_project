package leo.bean;

import java.sql.Timestamp;

/**
 * MainArticle entity. @author MyEclipse Persistence Tools
 */

public class MainArticle implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String summary;
	private String keywords;
	private Timestamp createDate;
	private Integer viewCount;
	private Integer contentId;

	// Constructors

	/** default constructor */
	public MainArticle() {
	}

	/** full constructor */
	public MainArticle(String title, String summary, String keywords,
			Timestamp createDate, Integer viewCount, Integer contentId) {
		this.title = title;
		this.summary = summary;
		this.keywords = keywords;
		this.createDate = createDate;
		this.viewCount = viewCount;
		this.contentId = contentId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public Integer getViewCount() {
		return this.viewCount;
	}

	public void setViewCount(Integer viewCount) {
		this.viewCount = viewCount;
	}

	public Integer getContentId() {
		return this.contentId;
	}

	public void setContentId(Integer contentId) {
		this.contentId = contentId;
	}

}