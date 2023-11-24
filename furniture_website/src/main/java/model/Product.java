package model;

import data.Storage;

public class Product {
	private String id;
	private String name;
	private Category category;
	private Group group;
	private String producer;
	private double price;
	private String type;
	private String decription;
	private int qualityStorage;
	private String status;

	public Product() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param name
	 * @param category
	 * @param group
	 * @param wattage
	 * @param producer
	 * @param price
	 * @param decription
	 * @param qualityStorage
	 * @param status
	 * @param type
	 */
	public Product(String id, String name, Category category, Group group, String producer, double price,
			String decription, int qualityStorage, String status, String type) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.group = group;
		this.producer = producer;
		this.price = price;
		this.decription = decription;
		this.qualityStorage = qualityStorage;
		this.status = status;
		this.type = type;
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

	public void setCategory(String category) {
		this.category = Storage.getCategoryById(category);
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = Storage.getGroupByID(group);
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

}
