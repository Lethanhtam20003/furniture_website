package model;

public class ProDecorativeLights extends Product {
	private String packaged;
	private String brandOrigin;
	private String meterial;
	private String type;
	private String size;

	public ProDecorativeLights() {
		// TODO Auto-generated constructor stub
	}

	

	/**
	 * @param packaged
	 * @param brandOrigin
	 * @param meterial
	 * @param type
	 * @param size
	 */
	public ProDecorativeLights(String packaged, String brandOrigin, String meterial, String type, String size) {
		this.packaged = packaged;
		this.brandOrigin = brandOrigin;
		this.meterial = meterial;
		this.type = type;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

}
