package leo.controller;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.Skill;
import leo.bean.UserPreview;
import leo.service.IVitaService;
import leo.util.Response;

@Controller
@RequestMapping("/vita")
public class VitaController {

	@Autowired
	IVitaService vitaService;

	@ResponseBody
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public Response search(@RequestParam("skillIds[]") List<Integer> skillIds, int startIndex, int pageSize) {
		HashSet<UserPreview> previewVitaSet = vitaService.getPreviewVitas(skillIds, startIndex, pageSize);
		if (previewVitaSet == null) {
			return Response.error();
		} else {
			return Response.success(previewVitaSet);
		}
	}

	@ResponseBody
	@RequestMapping(value = "/getSkills", method = RequestMethod.GET)
	public Response getSkills() {
		List<Skill> skills = vitaService.getSkills();
		if (skills==null) {
			return Response.error();
		} else {
			return Response.success(skills);
		}
	}

}
