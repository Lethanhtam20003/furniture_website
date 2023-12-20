package model;

import java.sql.Date;

public class ProFurniture extends Product {

	private String brandOrigin;
	private String meterial;
	private String color;
	private String size;
	private String thicknessWood;

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
	 * @param brandOrigin
	 * @param meterial
	 * @param color
	 * @param size
	 * @param thicknessWood
	 */
	public ProFurniture(String id, String name, String category, String group, String producer, double price,
			String type, String decription, int qualityStorage, String status, String brandOrigin, String meterial,
			String color, String size, String thicknessWood, String imgPath, String couponID, Date dateAdded) {
		super(id, name, category, group, producer, price, type, decription, qualityStorage, status, imgPath, couponID,
				dateAdded);
		this.brandOrigin = brandOrigin;
		this.meterial = meterial;
		this.color = color;
		this.size = size;
		this.thicknessWood = thicknessWood;
	}

}
