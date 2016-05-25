package leo.bean;

/**
 * 
 * @author leo
 * @Date 2016年2月24日
 * @Comments 存储文章信息
 */
public class Article {
	/**
	 * 文章id
	 */
	private int id;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 摘要
	 */
	private String description;
	/**
	 * 发文日期
	 */
	// @JsonFormat(pattern = "yyyy-MM-dd hh:mm")
	private String postDate;
	/**
	 * 阅读量
	 */
	private int viewCount;

	public Article() {
	}

	public Article(int id, String title, String description, String postDate, int viewCount) {
		this.id = id;
		this.title = title;
		this.description = description;
		this.postDate = postDate;
		this.viewCount = viewCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", description=" + description + ", postDate=" + postDate
				+ ", viewCount=" + viewCount + "]";
	}

}
