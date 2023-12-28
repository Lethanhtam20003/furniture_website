package model;

import java.sql.Date;

public class ProHandmade extends Product {
	private String color;
	private String size;
	private String design;
	private String timeToUse;

	public ProHandmade() {
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
	 * @param color
	 * @param size
	 * @param design
	 * @param timeToUse
	 */
	public ProHandmade(String id, String name, String category, String group, String producer, double price,
			String type, String decription, int qualityStorage, String status, String color, String size, String design,
			String timeToUse, String imgPath, String couponID, Date dateAdded) {
		super(id, name, category, group, producer, price, type, decription, qualityStorage, status, imgPath, couponID,
				dateAdded);
		this.color = color;
		this.size = size;
		this.design = design;
		this.timeToUse = timeToUse;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getDesign() {
		return design;
	}

	public void setDesign(String design) {
		this.design = design;
	}

	public String getTimeToUse() {
		return timeToUse;
	}

	public void setTimeToUse(String timeToUse) {
		this.timeToUse = timeToUse;
	}


}
