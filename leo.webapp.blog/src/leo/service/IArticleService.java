package leo.service;

import java.util.List;

import leo.bean.Article;

public interface IArticleService {
	List<Article> getArticles(int startIndex, int pageSize);

	String getContent(String articleId);

}
