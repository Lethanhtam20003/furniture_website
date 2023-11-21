package model1;

import java.sql.Date;
import java.util.List;

public class Order {
	private String id;
	private Date orderDate;
	private double shippingCost;
	private String status;
	private Coupon coupon;
	private List<OrderDetails> listProduct;

	/**
	 * 
	 */
	public Order() {
	}

	/**
	 * @param id
	 * @param orderDate
	 * @param shippingCost
	 * @param status
	 * @param coupon
	 * @param listProduct
	 */
	public Order(String id, Date orderDate, double shippingCost, String status, Coupon coupon,
			List<OrderDetails> listProduct) {
		this.id = id;
		this.orderDate = orderDate;
		this.shippingCost = shippingCost;
		this.status = status;
		this.coupon = coupon;
		this.listProduct = listProduct;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public double getShippingCost() {
		return shippingCost;
	}

	public void setShippingCost(double shippingCost) {
		this.shippingCost = shippingCost;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Coupon getCoupon() {
		return coupon;
	}

	public void setCoupon(Coupon coupon) {
		this.coupon = coupon;
	}

	public List<OrderDetails> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<OrderDetails> listProduct) {
		this.listProduct = listProduct;
	}

}
