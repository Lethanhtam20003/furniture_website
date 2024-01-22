package model;

import dao.DaoProduct;

public class CartItem {
	private Product product;
	private int quality;
	private double price;
	private boolean isSelected;
	private boolean idGift;
	private boolean isAvailable;

	public CartItem() {
		// TODO Auto-generated constructor stub
	}

	public CartItem(Product product, int quality, double price, boolean isSelected, boolean idGift,
			boolean isAvailable) {
		super();
		this.product = product;
		this.quality = quality;
		this.price = price;
		this.isSelected = isSelected;
		this.idGift = idGift;
		this.isAvailable = isAvailable;
	}

	public CartItem(String product, int quality, double price, boolean idGift, boolean isAvailable) {
		super();
		this.product = new DaoProduct().selectByID(product);
		this.quality = quality;
		this.price = price;
		this.idGift = idGift;
		this.isAvailable = isAvailable;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public boolean isSelected() {
		return isSelected;
	}

	public void setSelected(boolean isSelected) {
		this.isSelected = isSelected;
	}

	public boolean isIdGift() {
		return idGift;
	}

	public void setIdGift(boolean idGift) {
		this.idGift = idGift;
	}

	public boolean isAvailable() {
		return isAvailable;
	}

	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

	@Override
	public String toString() {
		return "CartItem [product=" + product + ", quality=" + quality + ", price=" + price + ", isSelected="
				+ isSelected + ", idGift=" + idGift + ", isAvailable=" + isAvailable + "]";
	}

}
