package model;

public class Product {
	private String id;
	private String name;
	private Category category;
	private Group group;
	private String wattage;
	private String producer;
	private double price;
	private String decription;
	private int qualityStorage;
	private String status;

	public Product() {
		// TODO Auto-generated constructor stub
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public String getWattage() {
		return wattage;
	}

	public void setWattage(String wattage) {
		this.wattage = wattage;
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDecription() {
		return decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public int getQualityStorage() {
		return qualityStorage;
	}

	public void setQualityStorage(int qualityStorage) {
		this.qualityStorage = qualityStorage;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
