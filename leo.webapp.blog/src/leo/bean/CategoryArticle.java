package leo.bean;

/**
 * 
 * @author leo
 * @Date 2016年2月27日
 * @Comments 映射到类别与文章的中间表
 */
public class CategoryArticle {
	private int id;
	private int articleId;
	private int categoryId;
	private String categoryName;

	public CategoryArticle() {
		// TODO Auto-generated constructor stub
	}

	public CategoryArticle(int articleId, int categoryId) {
		this.articleId = articleId;
		this.categoryId = categoryId;
	}

	public CategoryArticle(int articleId, String categoryName) {
		super();
		this.articleId = articleId;
		this.categoryName = categoryName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "CategoryArticle [id=" + id + ", articleId=" + articleId + ", categoryId=" + categoryId
				+ ", categoryName=" + categoryName + "]";
	}

}
