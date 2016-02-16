package leo.cache.imp;

import java.util.HashMap;

import leo.cache.IBaseCache;

public abstract class BaseCache<T> implements IBaseCache<T> {

	protected HashMap<Class, T> cacheMap = new HashMap<>();

	@Override
	public boolean setCache(T t) {
		// TODO Auto-generated method stub
		return cacheMap.put(t.getClass(), t) == null;
	}

	@Override
	public T getCache(Class clz) {
		// TODO Auto-generated method stub
		return cacheMap.get(clz);
	}

}
