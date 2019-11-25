package dao;

import java.util.List;

public interface UserDaoBase<T1, T2> extends BaseDao<T1, T2>{
	
	public List<T1> queryByName(String name);
}
