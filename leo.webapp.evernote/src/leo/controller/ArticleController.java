package leo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.service.IArticleService;
import leo.util.Response;

@Controller
@RequestMapping("/")
public class ArticleController {
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	// TODO 设置js,css文件的过期时间.
	@Autowired
	private IArticleService articleService;

	@RequestMapping(value = "/list/{startIndex}/{pageSize}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Response pageQuery() {
		try {
			return Response.success(null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return Response.error();
		}
	}
}
