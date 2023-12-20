package data;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.DaoCategory;
import dao.DaoCoupon;
import dao.DaoGroup;
import dao.DaoProduct;
import model.Category;
import model.Coupon;
import model.Group;
import model.ProDecoration;
import model.ProDecorativeLights;
import model.ProHandmade;
import model.ProSanitaryEquiment;
import model.Product;

public class Storage {
	private static Map<String, Product> listProduct;
	private static Map<String, Category> listCategorys;
	private static Map<String, Group> listGroups;
	private static Map<String, Coupon> listCoupon;

	private DaoProduct daoProduct;
	private DaoGroup daoGroup;
	private DaoCategory daoCategory;
	private DaoCoupon daoCoupon;

	public Storage() {
		// TODO Auto-generated constructor stub
		listProduct = new HashMap<>();
		listCategorys = new HashMap<>();
		listGroups = new HashMap<>();
		//
		daoProduct = new DaoProduct();
		daoGroup = new DaoGroup();
		daoCategory = new DaoCategory();
		setDataListProduct(daoProduct.selectAll());
		setDataListGroup(daoGroup.selectAll());
		setDataListCategory(daoCategory.selectAll());

	}

	private void setDataListCategory(List<Category> list) {
		// TODO Auto-generated method stub
		for (Category category : list) {
			listCategorys.put(category.getCategoryID(), category);
		}
	}

	private void setDataListGroup(List<Group> list) {
		// TODO Auto-generated method stub
		for (Group group : list) {
			listGroups.put(group.getGroupID(), group);
		}
	}

	private void setDataListProduct(List<Product> list) {
		// TODO Auto-generated method stub
		for (Product product : list) {
			if (product.getType().equalsIgnoreCase("decoration")) {
				listProduct.put(product.getId(), (ProDecoration) product);
			} else if (product.getType().equalsIgnoreCase("decorativeLights")) {
				listProduct.put(product.getId(), (ProDecorativeLights) product);
			} else if (product.getType().equalsIgnoreCase("handMade")) {
				listProduct.put(product.getId(), (ProHandmade) product);
			} else if (product.getType().equalsIgnoreCase("sanitaryEquiment")) {
				listProduct.put(product.getId(), (ProSanitaryEquiment) product);
			}

		}

	}

	public Map<String, Product> getListProduct() {
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

	public static Group getGroupByID(String group) {
		return getListGroups().get(group);
	}

	public static Category getCategoryById(String category) {
		return getListCategorys().get(category); 
	}

	public DaoProduct getDaoProduct() {
		return daoProduct;
	}

	public void setDaoProduct(DaoProduct daoProduct) {
		this.daoProduct = daoProduct;
	}

	public Product getpProductByID(String string) {
		// TODO Auto-generated method stub
		return daoProduct.selectByID(string);
	}

	public static Coupon getCouponByID(String coupon) {
		// TODO Auto-generated method stub
		return null;
	}

	public static void main(String[] args) {
		Storage s = new Storage();
		DaoProduct p = s.getDaoProduct();
		System.out.println(s.getListProduct());

	}
}
