package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.Chart;
import leo.bean.ChartPreview;

public interface IChartService extends IBaseService {


	int createAChart(Chart chart);
	
	int deleteAChart(Integer id);
	
	int updateAChart(Chart chart);
	
	List<ChartPreview> getChartsByEmail(String email);
}
