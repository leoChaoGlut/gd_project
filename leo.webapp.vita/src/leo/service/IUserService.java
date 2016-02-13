package leo.service;

import leo.base.IBaseService;
import leo.bean.User;

public interface IUserService extends IBaseService {
	User getUserInfo(User userParam);

	boolean logout();

	User register(User userParam);

	boolean isExists(User userParam);
}
