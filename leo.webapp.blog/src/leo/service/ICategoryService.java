package leo.service;

import java.util.List;

import leo.bean.Article;
import leo.bean.Category;

public interface ICategoryService {
	List<Category> getAllCategories();

	List<Article> getArticles(String categoryName);

}
