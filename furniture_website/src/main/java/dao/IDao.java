package dao;

import java.util.ArrayList;
import java.util.List;

public interface IDao<T> {
	public List<T> selectAll();
	public T selectByID(String t);
	public boolean insert(T t);
	public boolean insertAll(ArrayList<T> arr);
	public boolean delete(T t);
	public boolean deleteAll(ArrayList<T> arr);
	public boolean update(T t);
	
	
	
}
