package leo.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import leo.bean.MainArticle;
import leo.mapper.MainArticleMapper;
import leo.service.IArticleService;

@Service
public class ArticleServiceImp implements IArticleService {
	@Autowired
	private MainArticleMapper articleMapper;

	@Override
	public List<MainArticle> pageQuery(int startIndex, int pageSize) {
		// TODO Auto-generated method stub
		return articleMapper.pageQuery(startIndex, pageSize);
	}

}
