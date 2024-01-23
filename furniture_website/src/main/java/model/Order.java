package model;

import java.util.ArrayList;
import java.util.List;

public class Order {
	private String id;
	private String createAt;
	private String ShippingCost;
	private String totalPrice;
	private List<OrderItem> listOrderItem;
	private Payment payment;
	private String status;

	public Order(String id, String createAt, String shippingCost, String totalPrice, String status) {
		super();
		this.id = id;
		this.createAt = createAt;
		ShippingCost = shippingCost;
		this.totalPrice = totalPrice;
		this.status = status;
		listOrderItem = new ArrayList<OrderItem>();
	}

	public Order() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCreateAt() {
		return createAt;
	}

	public void setCreateAt(String createAt) {
		this.createAt = createAt;
	}

	public String getShippingCost() {
		return ShippingCost;
	}

	public void setShippingCost(String shippingCost) {
		ShippingCost = shippingCost;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<OrderItem> getListOrderItem() {
		return listOrderItem;
	}

	public void setListOrderItem(List<OrderItem> listOrderItem) {
		this.listOrderItem = listOrderItem;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
