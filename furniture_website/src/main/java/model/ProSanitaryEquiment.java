package model;

public class ProSanitaryEquiment extends Product {
	private String meterial;
	private String space;

	/**
	 * @param meterial
	 * @param space
	 */
	public ProSanitaryEquiment(String id, String name, Category category, Group group, String wattage, String producer,
			double price, String decription, int qualityStorage, String status, String type,String meterial, String space) {
		super(id, name, category, group, wattage, producer, price, decription, qualityStorage, status, type);
		this.meterial = meterial;
		this.space = space;
	}

	public ProSanitaryEquiment() {
		// TODO Auto-generated constructor stub
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
