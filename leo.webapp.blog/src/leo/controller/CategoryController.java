package leo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import leo.bean.Article;
import leo.bean.Category;
import leo.service.ICategoryService;
import leo.util.Response;

@Controller
@RequestMapping("/category")
public class CategoryController {
	@Autowired
	ICategoryService categoryService;

	@RequestMapping(value = "/all", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Response getAll() {
		try {
			List<Category> articles = categoryService.getAllCategories();
			return Response.success(articles);
		} catch (Exception e) {
			e.printStackTrace();
			return Response.error();
		}

	}

	@RequestMapping(value = "/{categoryName}/articles", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Response getArticles(@PathVariable("categoryName") String categoryName) {
		try {
			List<Article> articles = categoryService.getArticles(categoryName);
			return Response.success(articles);
		} catch (Exception e) {
			e.printStackTrace();
			return Response.error();
		}

	}
}
