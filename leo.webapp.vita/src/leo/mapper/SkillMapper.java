package leo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import leo.bean.Skill;

@Repository
public interface SkillMapper {
	List<Skill> selectMore();
}
