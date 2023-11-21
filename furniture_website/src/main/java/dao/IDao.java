package dao;

import java.util.ArrayList;

public interface IDao<T> {
	public void selectAll();
	public void selectByID(T t);
	public void insert(T t);
	public void insertAll(ArrayList<T> arr);
	public void delete(T t);
	public void deleteAll(ArrayList<T> arr);
	public void update(T t);
	
	
	
}
