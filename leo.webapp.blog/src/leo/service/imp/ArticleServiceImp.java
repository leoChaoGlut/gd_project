package leo.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.bean.Article;
import leo.mapper.ArticleMapper;
import leo.service.IArticleService;

@Service
@Transactional
public class ArticleServiceImp implements IArticleService {
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public List<Article> getArticles(int startIndex, int pageSize) {
		// TODO Auto-generated method stub
		List<Article> articles = articleMapper.selectMore(startIndex, pageSize);
		return articles;
	}

}
