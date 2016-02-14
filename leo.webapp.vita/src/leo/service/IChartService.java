package leo.service;

import java.util.HashSet;
import java.util.List;

import leo.base.IBaseService;
import leo.bean.Chart;
import leo.bean.ChartPreview;
import leo.bean.Skill;
import leo.bean.UserPreview;

public interface IChartService extends IBaseService {


	int createAChart(Chart chart);
	
	int deleteAChart(Integer id);
	
	List<ChartPreview> getChartsByEmail(String email);
}
