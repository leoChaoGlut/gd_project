package leo.cache;

public interface IBaseCache<T> {
	boolean setCache(T t);

	T getCache(Class clz);
}
