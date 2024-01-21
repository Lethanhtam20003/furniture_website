package model;

import java.sql.Date;

public class ProDecorativeLights extends Product {
	private String packaged;
	private String brandOrigin;
	private String meterial;
	private String size;
	private String wattage;

	public ProDecorativeLights() {
		// TODO Auto-generated constructor stub
	}

	public String getBrandOrigin() {
		return brandOrigin;
	}

	public String getWattage() {
		return wattage;
	}

	public void setWattage(String wattage) {
		this.wattage = wattage;
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
	 * @param packaged
	 * @param brandOrigin
	 * @param meterial
	 * @param size
	 * @param wattage
	 */
	public ProDecorativeLights(String id, String name, String producer, double price, String type, String decription,
			int qualityStorage, String status, String packaged, String brandOrigin, String meterial, String size,
			String wattage, String imgPath, String couponID, Date dateAdded) {
		super(id, name, producer, price, type, decription, qualityStorage, status, imgPath, couponID, dateAdded);
		this.packaged = packaged;
		this.brandOrigin = brandOrigin;
		this.meterial = meterial;
		this.size = size;
		this.wattage = wattage;
	}

	public void setBrandOrigin(String brandOrigin) {
		this.brandOrigin = brandOrigin;
	}

	public String getPackaged() {
		return packaged;
	}

	public void setPackaged(String packaged) {
		this.packaged = packaged;
	}

	public String getMeterial() {
		return meterial;
	}

	public void setMeterial(String meterial) {
		this.meterial = meterial;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

}
