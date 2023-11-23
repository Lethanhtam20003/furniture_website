package model;

import java.util.List;

public class Cart {
	private String cartID;
	private double shippingCost;
	private double totalPriceSelected;
	private List<CartItem> listCartItem;

	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public String getCartID() {
		return cartID;
	}

	public void setCartID(String cartID) {
		this.cartID = cartID;
	}

	public double getShippingCost() {
		return shippingCost;
	}

	public void setShippingCost(double shippingCost) {
		this.shippingCost = shippingCost;
	}

	public double getTotalPriceSelected() {
		return totalPriceSelected;
	}

	public void setTotalPriceSelected(double totalPriceSelected) {
		this.totalPriceSelected = totalPriceSelected;
	}

	public List<CartItem> getListCartItem() {
		return listCartItem;
	}

	public void setListCartItem(List<CartItem> listCartItem) {
		this.listCartItem = listCartItem;
	}

}
