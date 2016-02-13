package leo.controller;

import java.util.Objects;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.User;
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
	public Response login(User userParam) {
		User user = userService.getUserInfo(userParam);
		if (Objects.nonNull(user)) {
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
		if (Objects.nonNull(newUser)) {
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
			Response.error();
		} else {
			Response.success(true);
		}
		return null;
	}

}
