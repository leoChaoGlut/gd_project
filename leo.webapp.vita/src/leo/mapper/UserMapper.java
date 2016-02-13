package leo.mapper;

import org.springframework.stereotype.Repository;

import leo.bean.User;

@Repository
public interface UserMapper {

	User selectOne(User user);
	
	int insertOne(User user);

}
