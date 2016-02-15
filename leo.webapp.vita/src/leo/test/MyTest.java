package leo.test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import leo.bean.Chart;
import leo.bean.ChartPreview;
import leo.bean.UserPreview;
import leo.mapper.VitaMapper;
import leo.service.IChartService;
import leo.service.IVitaService;

public class MyTest {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("leo/config/spring-application-config.xml",
			"leo/config/spring-mvc-config.xml", "leo/config/spring-mybatis-config.xml");
	SqlSessionFactory factory = ctx.getBean(SqlSessionFactory.class);
	SqlSession session = factory.openSession();

	@Test
	public void test() {
		IVitaService vitaService = ctx.getBean(IVitaService.class);
		// VitaServiceImp vitaServiceImp = ctx.getBean(VitaServiceImp.class);
		VitaMapper vitaMapper = session.getMapper(VitaMapper.class);
		List<Integer> skillIds = new ArrayList<>();
		skillIds.add(1);
		skillIds.add(3);
		// HashSet<UserPreview> set = vitaService.getPreviewVitas(skillIds, 0,
		// 4);
		// System.out.println("===============");
		// for (UserPreview userPreview : set) {
		// System.out.println(userPreview.toString());
		// }
		List<UserPreview> list = vitaMapper.selectPage(skillIds, 10, 3);
		System.out.println(list.isEmpty());
	}

	@Test
	public void test2() {
		IChartService chartService = ctx.getBean(IChartService.class);
		Chart chart = new Chart("1", "{'name':'2','prof':'69','parent':'1','children':{}}", (short) 0);
		int count = chartService.createAChart(chart);
		System.out.println(count);
	}

	@Test
	public void test3() {
		IChartService chartService = ctx.getBean(IChartService.class);
		List<Chart> list = chartService.getChartsByEmail("1");
		for (Chart chart : list) {
			System.out.println(chart.toString());
		}
	}

	@Test
	public void test4() {
		IChartService chartService = ctx.getBean(IChartService.class);
		int count = chartService.deleteAChart(10);
		System.out.println(count);
	}

	@Test
	public void test5() throws IOException {
		String fileName = "xx";
		File dir = new File("C:/upload/vita/vv/");
		if (!dir.exists()) {
			dir.mkdirs();
		}
		File file = new File("C:/upload/vita/vv/" + fileName);
		FileOutputStream os = new FileOutputStream(file);
		String str = "aaaaaaa";

		os.write(str.getBytes());
		os.flush();
		os.close();

	}

	@Test
	public void test6() throws IOException {
		Calendar c = Calendar.getInstance();
		Date date = c.getTime();
		System.out.println(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date));

	}

	@Test
	public void test7() throws IOException {
		IChartService chartService = ctx.getBean(IChartService.class);
		Chart chart = chartService.getAChart(17);
		System.out.println(chart.toString());
	}
}
