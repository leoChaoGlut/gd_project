package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import leo.bean.Article;
import leo.bean.Category;

@Repository
public interface CategoryMapper {
	List<Article> selectMore(@Param("startIndex") int startIndex, @Param("pageSize") int pageSize);

	int insertMore(@Param("categories") List<Category> categories);
}
