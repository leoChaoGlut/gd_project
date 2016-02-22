package leo.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.Skill;
import leo.bean.User;
import leo.bean.UserSkill;
import leo.service.IUserService;
import leo.util.Response;

@Controller
@RequestMapping("/user")
public class UserController {
	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	IUserService userService;

	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public Response login(User paramUser) {
		User user = userService.getUserInfo(paramUser);
		if (user != null) {
			return Response.success(user);
		} else {
			return Response.error();
		}
	}

	@ResponseBody
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public Response logout() {
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public Response register(User userParam) {
		User newUser = userService.register(userParam);
		if (newUser != null) {
			return Response.success(newUser);
		} else {
			return Response.error();
		}
	}

	@ResponseBody
	@RequestMapping(value = "/checkEmail", method = RequestMethod.GET)
	public Response checkEmail(User userParam) {
		boolean isExists = userService.isExists(userParam);
		if (isExists) {
			return Response.error();
		} else {
			return Response.success(true);
		}
	}

	@ResponseBody
	@RequestMapping(value = "/updateSkills", method = RequestMethod.POST)
	public Response search(@RequestParam("skillIds[]") List<Integer> skillIds, Integer userId) {
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "/{userId}/get/skills/", method = RequestMethod.GET)
	public Response getSkills(@PathVariable("userId") Integer userId) {
		List<UserSkill> skills = userService.getSkills(userId);
		if (skills.isEmpty()) {
			return Response.error();
		} else {
			return Response.success(skills);
		}
	}
}
