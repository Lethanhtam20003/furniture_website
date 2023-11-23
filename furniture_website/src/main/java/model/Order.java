package model;

import java.util.List;

public class Order {
	private String id;
	private String createAt;
	private String ShippingCost;
	private String totalPrice;
	private List<OrderItem> listOrderItem;
	private Payment payment;
	private String status;

	public Order() {
		// TODO Auto-generated constructor stub
	}
}
