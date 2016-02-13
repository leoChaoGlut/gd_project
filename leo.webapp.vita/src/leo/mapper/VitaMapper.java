package leo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import leo.bean.Skill;
import leo.bean.User;
import leo.bean.UserPreview;

@Repository
public interface VitaMapper {

	List<UserPreview> selectPage(@Param("skillIds")List<Integer> skillIds, @Param("startIndex") int startIndex,
			@Param("pageSize") int pageSize);


}
