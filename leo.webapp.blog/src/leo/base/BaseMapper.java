package leo.base;

import java.util.List;

/**
 * 
 * @author leo
 *
 * @param <T>
 */
public interface BaseMapper<T> {
	List<T> selectAll();

	T selectOne(T t);

	int updateOne(T t);

	int deleteOne(T t);

	int insertOne(T t);
}
