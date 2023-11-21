package model1;

public class Product {
	private String id;
	private String name;
	private Group group;
	private Category category;
	private double amount;
	private double price;

	public Product() {
	}

	public Product(String id, String name, Group group, Category category, double amount, double price) {
		this.id = id;
		this.name = name;
		this.group = group;
		this.category = category;
		this.amount = amount;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
