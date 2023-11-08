package model;

import java.util.List;

public class Cart {
	private String id;
	private User user;
	private double shippingCost;
	private double totalPrice;
	private List<CartDetails> listItemCart;

	/**
	 * 
	 */
	public Cart() {
	}

	/**
	 * @param id
	 * @param user
	 * @param shippingCost
	 * @param totalPrice
	 * @param listItemCart
	 */
	public Cart(String id, User user, double shippingCost, double totalPrice, List<CartDetails> listItemCart) {
		this.id = id;
		this.user = user;
		this.shippingCost = shippingCost;
		this.totalPrice = totalPrice;
		this.listItemCart = listItemCart;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double getShippingCost() {
		return shippingCost;
	}

	public void setShippingCost(double shippingCost) {
		this.shippingCost = shippingCost;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<CartDetails> getListItemCart() {
		return listItemCart;
	}

	public void setListItemCart(List<CartDetails> listItemCart) {
		this.listItemCart = listItemCart;
	}

}
