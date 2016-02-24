package leo.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import leo.bean.Article;
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
}
