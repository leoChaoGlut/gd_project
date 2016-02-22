package leo.cache;

import java.util.HashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class CacheFactory {
	private static HashMap<Class, Object> cacheInstances = new HashMap<>();
	private static Lock lock = new ReentrantLock();

	/**
	 * 
	 * @param clz
	 *            通过Class来确定返回的指定的缓存类
	 * @return 如果为空,则代表出现异常.
	 * 	
	 */
	public static Object get(Class clz) {
		Object cacheInstance = cacheInstances.get(clz);
		if (cacheInstance == null) {
			lock.lock();
			try {
				if (cacheInstance == null) {
					cacheInstance = clz.newInstance();
					cacheInstances.put(clz, cacheInstance);
				}
			} catch (InstantiationException | IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				lock.unlock();
			}
		}
		return cacheInstance;
	}
}
