package leo.controller;

import java.lang.ref.SoftReference;
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
		return Response.success(articles);
	}

	@RequestMapping(value = "/{articleId}", method = RequestMethod.GET)
	@ResponseBody
	public Response getOne(@PathVariable("articleId") String articleId) {
		String content = articleService.getContent(articleId);
		if (content == null) {
			return Response.error();
		} else {
			SoftReference<String> srContent = new SoftReference<String>(content);
			return Response.success(srContent.get());
		}

	}
}
