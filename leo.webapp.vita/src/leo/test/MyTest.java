package leo.test;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import leo.bean.UserPreview;
import leo.mapper.VitaMapper;
import leo.service.IVitaService;

public class MyTest {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("leo/config/spring-application-config.xml",
			"leo/config/spring-mvc-config.xml", "leo/config/spring-mybatis-config.xml");
	SqlSessionFactory factory = ctx.getBean(SqlSessionFactory.class);
	SqlSession session = factory.openSession();

	@Test
	public void test() {
		IVitaService vitaService=ctx.getBean(IVitaService.class);
//		VitaServiceImp vitaServiceImp = ctx.getBean(VitaServiceImp.class);
		VitaMapper vitaMapper = session.getMapper(VitaMapper.class);
		List<Integer> skillIds = new ArrayList<>();
		skillIds.add(1);
		skillIds.add(3);
//		HashSet<UserPreview> set = vitaService.getPreviewVitas(skillIds, 0, 4);
//		System.out.println("===============");
//		for (UserPreview userPreview : set) {
//			System.out.println(userPreview.toString());
//		}
		List<UserPreview> list = vitaMapper.selectPage(skillIds, 10, 3);
		System.out.println(list.isEmpty());
	}

	@Test
	public void test2() {

	}

}
