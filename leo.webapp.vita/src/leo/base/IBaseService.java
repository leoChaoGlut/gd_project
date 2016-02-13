package leo.base;

import java.util.List;

public interface IBaseService <T>{
	List<T> pageQuery(int startIndex,int pageSize);
}
