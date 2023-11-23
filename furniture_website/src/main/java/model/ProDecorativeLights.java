package model;

public class ProDecorativeLights extends Product {
	private String packaged;
	private String brandOrigin;
	private String meterial;
	private String size;

	public ProDecorativeLights() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param packaged
	 * @param brandOrigin
	 * @param meterial
	 * @param size
	 */
	public ProDecorativeLights(String id, String name, Category category, Group group, String wattage, String producer,
			double price, String decription, int qualityStorage, String status, String type, String packaged,
			String brandOrigin, String meterial, String size) {
		super(id, name, category, group, wattage, producer, price, decription, qualityStorage, status, type);
		this.packaged = packaged;
		this.brandOrigin = brandOrigin;
		this.meterial = meterial;
		this.size = size;
	}

	public String getBrandOrigin() {
		return brandOrigin;
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

}
