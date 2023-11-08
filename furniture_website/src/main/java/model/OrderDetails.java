package model;

public class OrderDetails {
	private Product prooduct;
	private int quality;
	private double totalAmount;

	/**
	 * 
	 */
	public OrderDetails() {
	}

	/**
	 * @param prooduct
	 * @param quality
	 * @param totalAmount
	 */
	public OrderDetails(Product prooduct, int quality, double totalAmount) {
		this.prooduct = prooduct;
		this.quality = quality;
		this.totalAmount = totalAmount;
	}

	public Product getProoduct() {
		return prooduct;
	}

	public void setProoduct(Product prooduct) {
		this.prooduct = prooduct;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	

}
