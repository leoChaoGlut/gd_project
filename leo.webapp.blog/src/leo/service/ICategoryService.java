package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.Article;
import leo.bean.Category;

public interface ICategoryService extends IBaseService<Article> {
	List<Category> getAllCategories();

	List<Article> getArticles(String categoryName);

}
