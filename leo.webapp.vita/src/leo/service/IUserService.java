package leo.service;

import java.util.List;

import leo.base.IBaseService;
import leo.bean.User;
import leo.bean.UserSkill;

public interface IUserService extends IBaseService {
	User getUserInfo(User paramUser);

	boolean logout();

	User register(User userParam);

	boolean isExists(User userParam);

	List<UserSkill> getSkills(Integer userId);
}
