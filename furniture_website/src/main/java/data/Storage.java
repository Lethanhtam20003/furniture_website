package data;

import java.util.HashMap;
import java.util.Map;

import dao.DaoProduct;
import model.Category;
import model.Group;
import model.Product;

public class Storage {
	private static Map<String, Product> listProduct;
	private static Map<String, Category> listCategorys;
	private static Map<String, Group> listGroups;
	private DaoProduct daoProduct;

	public Storage() {
		// TODO Auto-generated constructor stub
		listProduct = new HashMap<>();
		listCategorys = new HashMap<>();
		listGroups = new HashMap<>();
		daoProduct = new DaoProduct();
		daoProduct.getDataListProduct(listProduct);

	}

	public static Map<String, Product> getListProduct() {
		return listProduct;
	}

	public static void setListProduct(Map<String, Product> listProduct) {
		Storage.listProduct = listProduct;
	}

	public static Map<String, Category> getListCategorys() {
		return listCategorys;
	}

	public static void setListCategorys(Map<String, Category> listCategorys) {
		Storage.listCategorys = listCategorys;
	}

	public static Map<String, Group> getListGroups() {
		return listGroups;
	}

	public static void setListGroups(Map<String, Group> listGroups) {
		Storage.listGroups = listGroups;
	}

	public static Category getCategoryById(String category) {
		return getListCategorys().get(category);
	}

	public static Group getGroupByID(String group) {
		return getListGroups().get(group);
	}

}
