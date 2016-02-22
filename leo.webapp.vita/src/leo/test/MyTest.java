package leo.test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import leo.bean.Skill;
import leo.bean.UserSkill;
import leo.cache.CacheFactory;
import leo.cache.imp.UserSkillCache;
import leo.service.IUserService;

public class MyTest {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("leo/config/spring-application-config.xml",
			"leo/config/spring-mvc-config.xml", "leo/config/spring-mybatis-config.xml");
	SqlSessionFactory factory = ctx.getBean(SqlSessionFactory.class);
	SqlSession session = factory.openSession();

	@Test
	public void test0() {
		UserSkillCache userSkillCache = (UserSkillCache) CacheFactory.get(UserSkillCache.class);
		List<Skill> list = new ArrayList<>();
		list.add(new Skill("name1", (short) 0));
		list.add(new Skill("name2", (short) 1));
		userSkillCache.set(1, list);

		List<Skill> list2 = userSkillCache.get(1);
		for (Skill skill : list2) {
			System.out.println(skill.toString());
		}
	}

	@Test
	public void test1() {
		UserSkillCache userSkillCache = (UserSkillCache) CacheFactory.get(UserSkillCache.class);
		List<Skill> list = userSkillCache.get(1);
		for (Skill skill : list) {
			System.out.println(skill.toString());
		}
	}

	@Test
	public void test3() {
		UserSkillCache userSkillCache = (UserSkillCache) CacheFactory.get(UserSkillCache.class);
		System.out.println(userSkillCache == null);
	}

	// 测试label_manage通过userId获取对应skills的服务
	@Test
	public void test4() {
		IUserService userService = ctx.getBean(IUserService.class);
		List<UserSkill> skills = userService.getSkills(1);
		for (UserSkill userSkill : skills) {
			System.out.println(userSkill.toString());
		}
	}
}
