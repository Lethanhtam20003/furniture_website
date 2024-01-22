package data;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.DaoCoupon;
import dao.DaoProduct;
import model.Coupon;
import model.ProDecoration;
import model.ProDecorativeLights;
import model.ProFurniture;
import model.ProHandmade;
import model.ProSanitaryEquiment;
import model.Product;

public class Storage {
	private static Map<String, Product> listProduct;
	private static List<Coupon> listCoupon;

	private DaoProduct daoProduct;
	private DaoCoupon daoCoupon;

	public Storage() {
		// TODO Auto-generated constructor stub
		listProduct = new HashMap<>();
		//
		daoProduct = new DaoProduct();
		setDataListProduct(daoProduct.selectAll());

		daoCoupon = new DaoCoupon();
		listCoupon = daoCoupon.selectAll();

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
			} else if (product.getType().equalsIgnoreCase("furniture")) {
				listProduct.put(product.getId(), (ProFurniture) product);
			}

		}

	}

	public Map<String, Product> getListProduct() {
		return listProduct;
	}

	public static void setListProduct(Map<String, Product> listProduct) {
		Storage.listProduct = listProduct;
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

	public static List<Coupon> getListCoupon() {
		return listCoupon;
	}

	public static void setListCoupon(List<Coupon> listCoupon) {
		Storage.listCoupon = listCoupon;
	}
}
