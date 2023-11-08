package model;

public class CartDetails {
	private Product produc;
	private double price;
	private int quality;
	private boolean isGift;
	private boolean isACtive;

	public CartDetails() {
	}

	/**
	 * @param produc
	 * @param price
	 * @param quality
	 * @param isGift
	 * @param isACtive
	 */
	public CartDetails(Product produc, double price, int quality, boolean isGift, boolean isACtive) {
		this.produc = produc;
		this.price = price;
		this.quality = quality;
		this.isGift = isGift;
		this.isACtive = isACtive;
	}

	public Product getProduc() {
		return produc;
	}

	public void setProduc(Product produc) {
		this.produc = produc;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public boolean isGift() {
		return isGift;
	}

	public void setGift(boolean isGift) {
		this.isGift = isGift;
	}

	public boolean isACtive() {
		return isACtive;
	}

	public void setACtive(boolean isACtive) {
		this.isACtive = isACtive;
	}

}
