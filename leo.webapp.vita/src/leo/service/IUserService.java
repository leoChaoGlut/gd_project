package leo.service;

import leo.base.IBaseService;
import leo.bean.User;

public interface IUserService extends IBaseService {
	User getUserInfo(User paramUser);

	boolean logout();

	User register(User userParam);

	boolean isExists(User userParam);
}
