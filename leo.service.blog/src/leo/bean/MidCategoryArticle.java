package leo.bean;

/**
 * MidCategoryArticle entity. @author MyEclipse Persistence Tools
 */

public class MidCategoryArticle implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer categoryId;
	private Integer articleId;

	// Constructors

	/** default constructor */
	public MidCategoryArticle() {
	}

	/** full constructor */
	public MidCategoryArticle(Integer categoryId, Integer articleId) {
		this.categoryId = categoryId;
		this.articleId = articleId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

}