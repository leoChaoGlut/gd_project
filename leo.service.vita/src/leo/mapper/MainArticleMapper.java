package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import leo.bean.MainArticle;
import leo.util.SQLBuilder;

@Repository
public interface MainArticleMapper {
	String TABLE_NAME = "main_article";

	@Select("SELECT * FROM " + TABLE_NAME + " LIMIT #{startIndex},#{pageSize}")
	List<MainArticle> pageQuery(@Param("startIndex") int startIndex, @Param("pageSize") int pageSize);
}
