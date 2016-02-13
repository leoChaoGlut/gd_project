package leo.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.bean.Chart;
import leo.mapper.ChartMapper;
import leo.service.IChartService;
@Service
@Transactional
public class ChartServiceImp implements IChartService {

	@Autowired
	ChartMapper chartMapper;
	
	@Override
	public int createAChart(Chart chart) {
		// TODO Auto-generated method stub
		int count = chartMapper.insertOne(chart);
		return count;
	}

	@Override
	public List<Chart> getChartsByEmail(String email) {
		// TODO Auto-generated method stub
		List<Chart> charts = chartMapper.selectMore(email);
		return charts;
	}

}
