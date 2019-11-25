package dao;

import java.util.List;

public interface BaseDao<T1, T2> { // T1: javabean, T2: id
	
	public boolean doInsert(T1 t); // 插入
	
	public boolean doDelete(T2 t); // 按照 id 删除
	
	public boolean doUpdate(T1 t); // 更新
	
	public boolean doExistMul(T1 t); // 按照多个属性查找
	
	public boolean doExist(T2 t); // 是否存在
	
	public T1 queryById(T2 t); // 根据 id 查找
	
	public List<T1> findAll(); // 返回全部
}
