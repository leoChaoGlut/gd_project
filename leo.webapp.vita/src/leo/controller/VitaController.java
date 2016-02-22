package leo.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import leo.bean.Chart;
import leo.bean.Skill;
import leo.bean.UserOverview;
import leo.service.IChartService;
import leo.service.IVitaService;
import leo.util.Response;

@Controller
@RequestMapping("/vita")
public class VitaController {
	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	IVitaService vitaService;
	@Autowired
	IChartService chartService;

	@ResponseBody
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public Response search(@RequestParam("skillIds[]") List<Integer> skillIds, int startIndex, int pageSize) {
		HashSet<UserOverview> userOverviewSet = vitaService.getPreviewVitas(skillIds, startIndex, pageSize);
		if (userOverviewSet == null) {
			return Response.error();
		} else {
			return Response.success(userOverviewSet);
		}
	}

	@ResponseBody
	@RequestMapping(value = "/getSkills", method = RequestMethod.GET)
	public Response getSkills() {
		List<Skill> skills = vitaService.getSkills();
		if (skills == null) {
			return Response.error();
		} else {
			return Response.success(skills);
		}
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestParam("file") CommonsMultipartFile file, @RequestParam("userId") Integer userId,
			@RequestParam("uploadVitaID") String uploadVitaID) {
		InputStream is = null;
		OutputStream os = null;
		String outputFilePath = "";
		log.info("============");
		log.info(userId);
		try {
			String fileName = file.getOriginalFilename();
			is = file.getInputStream();
			String dirPath = "C:/upload/vita/" + userId;
			File dir = new File(dirPath);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			Calendar c = Calendar.getInstance();
			Date date = c.getTime();
			String dateStr = "/" + new SimpleDateFormat("yyyyMMddhhmmss").format(date);
			outputFilePath = dirPath + dateStr + fileName;
			File outputFile = new File(outputFilePath);
			os = new FileOutputStream(outputFile);
			int len = 0;
			byte[] data = new byte[1024];
			while ((len = is.read(data)) != -1) {
				os.write(data, 0, len);
				os.flush();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "upload failed";
		} finally {
			closeStream(is, os);
		}
		Chart chart = null;
		int count = 0;
		if (uploadVitaID != null && !uploadVitaID.trim().equals("")) {
			chart = new Chart();
			chart.setId(Integer.valueOf(uploadVitaID));
			chart.setJson(outputFilePath);
			count = chartService.updateAChart(chart);
		} else {
			chart = new Chart(userId, outputFilePath, (short) 0);
			count = chartService.createAChart(chart);
		}
		if (count <= 0) {
			try {
				throw new Exception("在上传简历后,新增chart时出现异常");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:../view/vita_manage.html";
	}

	private void closeStream(InputStream is, OutputStream os) {
		if (os != null) {
			try {
				os.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if (is != null) {
					try {
						is.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	}

}
