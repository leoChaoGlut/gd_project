package leo.test;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jni.File;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import leo.bean.Article;
import leo.service.IArticleService;
import leo.util.JedisUtil;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

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
	
}
