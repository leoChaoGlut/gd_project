package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.Skill;
import leo.bean.User;

public interface IUserService extends IBaseService {
	User getUserInfo(User paramUser);

	boolean logout();

	User register(User userParam);

	boolean isExists(User userParam);

	int updateSkills(List<Integer> skillIds, String email);

	List<Skill> getSkills(String email);
}
