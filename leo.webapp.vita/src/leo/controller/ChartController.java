package leo.controller;

import java.util.HashSet;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.Chart;
import leo.bean.Skill;
import leo.bean.UserPreview;
import leo.service.IChartService;
import leo.service.IVitaService;
import leo.util.Response;

@Controller
@RequestMapping("/chart")
public class ChartController {
	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	IChartService chartService;

	@ResponseBody
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public Response create(Chart chart) {
		int count = chartService.createAChart(chart);
		if (count > 0) {
			return Response.success(null);
		} else {
			return Response.error();
		}
	}

	@ResponseBody
	@RequestMapping(value = "/getChartsByEmail", method = RequestMethod.GET)
	public Response getChartsByEmail(String email) {
		List<Chart> charts = chartService.getChartsByEmail(email);
		if (charts.isEmpty()) {
			return Response.error();
		} else {
			return Response.success(charts);
		}
	}

}
