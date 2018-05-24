package site.redstone.ams.dao;

public interface BaseDao<T> {
	
	public void add(T obj);

	public void delete(T obj);

	public void update(T obj);
	
}
