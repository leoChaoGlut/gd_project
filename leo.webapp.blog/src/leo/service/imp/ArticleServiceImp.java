package leo.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.bean.Article;
import leo.mapper.ArticleMapper;
import leo.service.IArticleService;
import leo.util.JedisUtil;
import redis.clients.jedis.Jedis;

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

	@Override
	public String getContent(String articleId) {
		String content = null;
		Jedis jedis = null;
		try {
			// TODO Auto-generated method stub
			jedis = JedisUtil.getResource();
			content = jedis.get(articleId);
			if (content == null) {
				// TODO 如果redis中没有key对应的value,应该做何处理?
				// TODO 如果redis中没有key对应的value,应该做何处理?
				// TODO 如果redis中没有key对应的value,应该做何处理?
				// TODO 如果redis中没有key对应的value,应该做何处理?
				// TODO 如果redis中没有key对应的value,应该做何处理?
			}
		} finally {
			// TODO: handle finally clause
			JedisUtil.returnResource(jedis);
		}
		return content;
	}

}
