package model;

public class ProSanitaryEquiment extends Product {
	private String meterial;
	private String space;

	public ProSanitaryEquiment() {
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
	 * @param meterial
	 * @param space
	 */
	public ProSanitaryEquiment(String id, String name, String category, String group, String producer, double price,
			String type, String decription, int qualityStorage, String status, String meterial, String space,
			String imgPath, String couponID) {
		super(id, name, category, group, producer, price, type, decription, qualityStorage, status, imgPath, couponID);
		this.meterial = meterial;
		this.space = space;
	}

	public String getMeterial() {
		return meterial;
	}

	public void setMeterial(String meterial) {
		this.meterial = meterial;
	}

	public String getSpace() {
		return space;
	}

	public void setSpace(String space) {
		this.space = space;
	}

}
