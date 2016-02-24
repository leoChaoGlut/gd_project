package leo.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 
 * @author leo
 * @Date 2016年2月24日
 * @Comments 存储文章信息
 */
public class Article {
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
	@JsonFormat(pattern = "yyyy-MM-dd hh:mm", timezone = "GMT+8")
	private Date postDate;
	/**
	 * 阅读量
	 */
	private int view;
	/**
	 * 文章详情链接
	 */
	private String articleCode;

	public Article() {
		// TODO Auto-generated constructor stub
	}

	public Article(String title, String description, Date postDate, int view, String articleCode) {
		this.title = title;
		this.description = description;
		this.postDate = postDate;
		this.view = view;
		this.articleCode = articleCode;
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

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getArticleCode() {
		return articleCode;
	}

	public void setArticleCode(String articleCode) {
		this.articleCode = articleCode;
	}

	@Override
	public String toString() {
		return "Article [title=" + title + ", description=" + description + ", postDate=" + postDate + ", view=" + view
				+ ", articleCode=" + articleCode + "]";
	}

}
