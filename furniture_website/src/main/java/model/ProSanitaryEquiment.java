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
	 * @param decription
	 * @param qualityStorage
	 * @param status
	 * @param type
	 * @param meterial
	 * @param space
	 */
	public ProSanitaryEquiment(String id, String name, Category category, Group group, String producer, double price,
			String decription, int qualityStorage, String status, String type, String meterial, String space) {
		super(id, name, category, group, producer, price, decription, qualityStorage, status, type);
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
