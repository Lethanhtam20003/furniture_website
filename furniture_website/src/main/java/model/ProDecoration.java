package model;

import java.sql.Date;

public class ProDecoration extends Product {

	private String design;
	private String size;
	private String color;
	private String thicknessWood;

	public ProDecoration() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param name
	 * @param category
	 * @param group
	 * @param producer
	 * @param price
	 * @param type
	 * @param decription
	 * @param qualityStorage
	 * @param status
	 * @param imgPath
	 * @param design
	 * @param size
	 * @param color
	 * @param thicknessWood
	 */
	public ProDecoration(String id, String name, String category, String group, String producer, double price,
			String type, String decription, int qualityStorage, String status, String design, String size, String color,
			String thicknessWood, String imgPath, String couponID, Date dateAdded) {
		super(id, name, category, group, producer, price, type, decription, qualityStorage, status, imgPath, couponID,
				dateAdded);
		this.design = design;
		this.size = size;
		this.color = color;
		this.thicknessWood = thicknessWood;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getThicknessWood() {
		return thicknessWood;
	}

	public void setThicknessWood(String thicknessWood) {
		this.thicknessWood = thicknessWood;
	}

}
