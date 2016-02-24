package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import leo.bean.Article;

@Repository
public interface ArticleMapper {
	List<Article> selectMore(@Param("startIndex") int startIndex, @Param("pageSize") int pageSize);
}
