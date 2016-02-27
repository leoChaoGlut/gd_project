package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import leo.bean.Category;

@Repository
public interface CategoryMapper {
	List<Category> selectAll();

	int insertMore(@Param("categories") List<Category> categories);

}
