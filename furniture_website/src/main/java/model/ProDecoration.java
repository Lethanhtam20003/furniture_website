package model;

public class ProDecoration extends Product {
	private String size;
	private String color;
	private String thicknessWood;

	public ProDecoration() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param size
	 * @param color
	 * @param thicknessWood
	 */
	public ProDecoration(String id, String name, String category, String group, String wattage, String producer,
			double price, String decription, int qualityStorage, String status, String size, String color,
			String thicknessWood) {
		super(id, name, category, group, wattage, producer, price, decription, qualityStorage, status);
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
