package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.Chart;

public interface IChartService extends IBaseService {


	int createAChart(Chart chart);
	
	int deleteAChart(Integer id);
	
	int updateAChart(Chart chart);
	
	Chart getAChart(Integer id);
	
	List<Chart> getChartsByUserId(Integer userId);
}
