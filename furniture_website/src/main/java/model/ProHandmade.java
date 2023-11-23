package model;

public class ProHandmade extends Product {
	private String color;
	private String size;
	private String design;
	private String timeToUse;

	public ProHandmade() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param color
	 * @param size
	 * @param design
	 * @param timeToUse
	 */
	public ProHandmade(String id, String name, Category category, Group group, String wattage, String producer,
			double price, String decription, int qualityStorage, String status, String type,String color, String size, String design, String timeToUse) {
		super(id, name, category, group, wattage, producer, price, decription, qualityStorage, status, type);
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
