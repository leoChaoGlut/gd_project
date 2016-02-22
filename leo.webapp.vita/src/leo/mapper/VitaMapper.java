package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import leo.bean.UserOverview;

@Repository
public interface VitaMapper {

	List<UserOverview> selectPage(@Param("skillIds")List<Integer> skillIds, @Param("startIndex") int startIndex,
			@Param("pageSize") int pageSize);


}
