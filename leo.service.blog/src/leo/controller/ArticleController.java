package leo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.MainArticle;
import leo.service.IArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	private IArticleService articleService;
	
	@RequestMapping(value = "/pageQuery", method = RequestMethod.GET,produces="application/json")
	@ResponseBody
	public List<MainArticle> pageQuery(int startIndex, int pageSize) {
		return articleService.pageQuery(startIndex, pageSize);
	}

}
