package service;

import java.util.List;

public interface UserService<T1> {
	
	public boolean add(T1 t);
	
	public T1 queryById(String id);
	
	public List<T1> queryByName(String name);
	
	public boolean updateInfo(T1 t);
}
