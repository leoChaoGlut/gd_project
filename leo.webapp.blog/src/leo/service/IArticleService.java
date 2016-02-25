package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.Article;

public interface IArticleService extends IBaseService<Article> {
	List<Article> getArticles(int startIndex, int pageSize);

	String getContent(String articleId);

}
