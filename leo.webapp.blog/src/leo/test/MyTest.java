package leo.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;

import leo.bean.Article;
import leo.bean.Category;
import leo.bean.CategoryArticle;
import leo.mapper.ArticleMapper;
import leo.mapper.CategoryMapper;
import leo.mapper.TestMapper;
import leo.service.IArticleService;
import leo.service.ICategoryService;
import leo.util.JSONFileReader;

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
		TestMapper mapper = ctx.getBean(TestMapper.class);
		List<CategoryArticle> list = JSONFileReader.parseArray(CategoryArticle.class, "c://1");
		for (CategoryArticle categoryArticle : list) {
			System.out.println(categoryArticle.toString());
		}
		mapper.insertMore(list);
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
		TestMapper mapper = ctx.getBean(TestMapper.class);
		List<Article> list = JSONFileReader.parseArray(Article.class, "C://2");
//		list.sort(new Comparator<Article>() {
//
//			@Override
//			public int compare(Article o1, Article o2) {
//				// TODO Auto-generated method stub
//				return o1.getId() - o2.getId();
//			}
//		});
		for (Article article : list) {
			System.out.println(article.toString());
		}
		mapper.insertArticles(list);
	}

	@Test
	public void test7() {
		ArticleMapper articleMapper = ctx.getBean(ArticleMapper.class);
		List<Article> list = articleMapper.pageQuery(0, 10);
		for (Article article : list) {
			System.out.println(article.toString());
		}
	}

}
