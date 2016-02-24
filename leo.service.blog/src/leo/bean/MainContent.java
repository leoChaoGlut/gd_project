package leo.bean;

/**
 * MainContent entity. @author MyEclipse Persistence Tools
 */

public class MainContent implements java.io.Serializable {

	// Fields

	private Integer id;
	private String content;
	private Integer articleId;

	// Constructors

	/** default constructor */
	public MainContent() {
	}

	/** full constructor */
	public MainContent(String content, Integer articleId) {
		this.content = content;
		this.articleId = articleId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

}