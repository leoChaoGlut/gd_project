package leo.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;

import leo.bean.Article;
import leo.bean.Category;
import leo.mapper.CategoryMapper;
import leo.service.IArticleService;

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

}
