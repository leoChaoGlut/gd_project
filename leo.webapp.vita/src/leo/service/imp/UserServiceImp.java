package leo.service.imp;

import java.util.List;
import java.util.Objects;

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

	@Autowired
	UserMapper userMapper;

	@Override
	public List pageQuery(int startIndex, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserInfo(User userParam) {
		// TODO Auto-generated method stub
		User user = userMapper.selectOne(userParam);
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
		return Objects.nonNull(user);
	}

}
