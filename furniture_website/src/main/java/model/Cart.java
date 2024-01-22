package model;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

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

		double res = 0;
		for (CartItem c : listCartItem) {
			System.out.println(c);
			if (c.isSelected()) {
				res += c.getPrice() * c.getQuality();
			}
		}
		return res;
	}

	public List<CartItem> getListCartItem() {
		return listCartItem;
	}

	public void setListCartItem(List<CartItem> listCartItem) {
		this.listCartItem = listCartItem;
	}

	public boolean checkProductExit(String idProduct) {
		// TODO Auto-generated method stub
		for (CartItem cartItem : listCartItem) {
			if (cartItem.getProduct().getId().equals(idProduct)) {
				return true;
			}
		}
		return false;
	}

	public double getTotalPrice(double a) {
		return getTotalPriceSelected() - a;
	}

	public double getTotalPrice2() {
		return getTotalPriceSelected();
	}
}
