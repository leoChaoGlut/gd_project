package leo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import leo.bean.Skill;
import leo.bean.UserSkill;

@Repository
public interface SkillMapper {
	List<Skill> selectMore();

	List<UserSkill> selectMoreByUserId(Integer userId);

}
