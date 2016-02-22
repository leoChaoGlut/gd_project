package leo.cache;

public interface IBaseCache<K, V> {

	void set(K k, V v);

	V get(K k);
}
