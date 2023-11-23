package model;

import java.util.List;

public class Storage {
	private List<Product> listProduct;

	public Storage() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param listProduct
	 */
	public Storage(List<Product> listProduct) {
		this.listProduct = listProduct;
	}

	public List<Product> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<Product> listProduct) {
		this.listProduct = listProduct;
	}

}
