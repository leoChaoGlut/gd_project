package leo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.Article;
import leo.service.IArticleService;
import leo.util.Response;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private IArticleService articleService;

	@RequestMapping(value = "/list/{startIndex}/{pageSize}", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Response pageQuery(@PathVariable("startIndex") int startIndex, @PathVariable("pageSize") int pageSize) {
		List<Article> articles = articleService.getArticles(startIndex, pageSize);
		if (articles.isEmpty()) {
			return Response.error();
		} else {
			return Response.success(articles);
		}
	}
}
