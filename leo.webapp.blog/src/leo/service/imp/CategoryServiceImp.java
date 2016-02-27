package leo.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.bean.Article;
import leo.bean.Category;
import leo.mapper.ArticleMapper;
import leo.mapper.CategoryMapper;
import leo.service.IArticleService;
import leo.service.ICategoryService;
import leo.util.JedisUtil;
import redis.clients.jedis.Jedis;

@Service
@Transactional
public class CategoryServiceImp implements ICategoryService {
	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		List<Category> categories = categoryMapper.selectAll();
		return categories;
	}

	@Override
	public List<Article> getArticles(String categoryName) {
		// TODO Auto-generated method stub
		List<Article> articles = articleMapper.selectMore(categoryName);
		return articles;
	}

}
