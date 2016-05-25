package leo.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.List;
import java.util.Properties;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;

import leo.bean.Article;
import leo.bean.Category;
import leo.mapper.ArticleMapper;
import leo.mapper.CategoryMapper;
import leo.service.IArticleService;
import leo.service.ICategoryService;
import leo.util.JSONFileReader;
import leo.util.SpiderUtil;

public class MyTest {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("leo/config/spring-application-config.xml",
			"leo/config/spring-mvc-config.xml", "leo/config/spring-mybatis-config.xml");
	SqlSessionFactory factory = ctx.getBean(SqlSessionFactory.class);
	SqlSession session = factory.openSession();

	@Test
	public void test() throws Exception {
		IArticleService articleService = ctx.getBean(IArticleService.class);
		List<Article> articles = articleService.getArticles(1, 5);
		for (Article article : articles) {
			System.out.println(article.toString());
		}
	}

	@SuppressWarnings("resource")
	@Test
	public void test1() throws Exception {
		IArticleService articleService = ctx.getBean(IArticleService.class);
		String content = articleService.getContent("50445420");
		System.out.println(content);
	}

	@Test
	public void test2() throws Exception {
		BufferedReader br = new BufferedReader(new FileReader("c://1.txt"));
		String lineData = "";
		StringBuilder sb = new StringBuilder();
		while ((lineData = br.readLine()) != null) {
			sb.append(lineData);
		}
		List<Category> categories = JSON.parseArray(sb.toString(), Category.class);
		CategoryMapper categoryMapper = ctx.getBean(CategoryMapper.class);
		int count = categoryMapper.insertMore(categories);
		System.out.println(count);
	}

	@Test
	public void test3() {
		ICategoryService categoryService = ctx.getBean(ICategoryService.class);
		List<Category> categories = categoryService.getAllCategories();
		for (Category category : categories) {
			System.out.println(category.toString());
		}
	}

	/**
	 * 插入blog_mid_category_article
	 */
	@Test
	public void test4() {
		// TestMapper mapper = ctx.getBean(TestMapper.class);
		// List<CategoryArticle> list =
		// JSONFileReader.parseArray(CategoryArticle.class, "c://1");
		// for (CategoryArticle categoryArticle : list) {
		// System.out.println(categoryArticle.toString());
		// }
		// mapper.insertMore(list);
	}

	@Test
	public void test5() {
		ICategoryService categoryService = ctx.getBean(ICategoryService.class);
		List<Article> articles = categoryService.getArticles("JVM");
		for (Article article : articles) {
			System.out.println(article.toString());
		}
	}

	@Test
	public void test6() {
		// TestMapper mapper = ctx.getBean(TestMapper.class);
		// List<Article> list = JSONFileReader.parseArray(Article.class,
		// "C://2");
		// list.sort(new Comparator<Article>() {
		//
		// @Override
		// public int compare(Article o1, Article o2) {
		// // TODO Auto-generated method stub
		// return o1.getId() - o2.getId();
		// }
		// });
		// for (Article article : list) {
		// System.out.println(article.toString());
		// }
		// mapper.insertArticles(list);
	}

	/**
	 * 通过json转换为Article List 再存到数据库
	 */
	@Test
	public void test7() {
		List<Article> articles = JSONFileReader.parseArray(Article.class, "C:/1");
		ArticleMapper articleMapper = ctx.getBean(ArticleMapper.class);
		// articleMapper.insertMore(articles);
	}

	/**
	 * 
	 */
	@Test
	public void test8() {
		// Jedis jedis = JedisUtil.getResource();
		// List<Article> articles = JSONFileReader.parseArray(Article.class,
		// "C:/1");
		// for (Article article : articles) {
		// int articleId = article.getArticleId();
		// System.out.println(articleId);
		// jedis.set(articleId + "",
		// JSONFileReader.getStringContent("C://articles/" + articleId));
		// }
	}

	@Test
	public void test9() {
		List<Category> categories = JSONFileReader.parseArray(Category.class, "C://categories");
		CategoryMapper categoryMapper = ctx.getBean(CategoryMapper.class);
		categoryMapper.insertMore(categories);
	}

	@Test
	public void test10() {
		Properties ppt = SpiderUtil.getProperties("/leo/config/setting.properties");
		String atc = ppt.getProperty("articleJsonPath");
		System.out.println(atc);
	}

}
