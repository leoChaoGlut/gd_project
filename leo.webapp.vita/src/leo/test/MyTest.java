package leo.test;

import java.util.Objects;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.StringUtils;

import leo.bean.User;
import leo.mapper.UserMapper;

public class MyTest {

	@Test
	public void test() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("leo/config/spring-application-config.xml",
				"leo/config/spring-mvc-config.xml", "leo/config/spring-mybatis-config.xml");
		System.out.println(ctx);
		SqlSessionFactory factory = ctx.getBean(SqlSessionFactory.class);
		SqlSession session = factory.openSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		System.out.println(mapper);

		User u = new User();
		u.setEmail("3");
		u.setPwd("123");
		System.out.println(u.toString());
		User user = mapper.selectOne(u);
		System.out.println(Objects.nonNull(user) ? user.toString() : "null");
		
		int insertOne = mapper.insertOne(u);
		System.out.println(insertOne);
	}

}
