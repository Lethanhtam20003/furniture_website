package model;

import java.util.List;

import dao.DaoCartItem;

public class Cart {
	private String cartID;
	private String accountID;
	private double shippingCost;
	private double totalPriceSelected;
	private List<CartItem> listCartItem;

	public Cart() {
		listCartItem = new DaoCartItem(cartID).selectAll();
	}

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
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
