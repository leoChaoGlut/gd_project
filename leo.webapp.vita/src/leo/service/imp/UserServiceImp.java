package leo.service.imp;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.base.AbstractService;
import leo.bean.User;
import leo.mapper.UserMapper;
import leo.service.IUserService;

@Service
@Transactional
public class UserServiceImp extends AbstractService implements IUserService {
	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	UserMapper userMapper;

	@Override
	public User getUserInfo(User paramUser) {
		// TODO Auto-generated method stub
		User user = userMapper.selectOne(paramUser);
		return user;
	}

	@Override
	public boolean logout() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User register(User userParam) {
		// TODO Auto-generated method stub
		int count = userMapper.insertOne(userParam);
		return count == 0 ? null : userParam;
	}

	@Override
	public boolean isExists(User userParam) {
		// TODO Auto-generated method stub
		User user = userMapper.selectOne(userParam);
		return user != null;
	}

}
