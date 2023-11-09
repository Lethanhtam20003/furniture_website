package model;

public class ProductDetails extends Product {
	private String brandName;
	private String supplierName;
	private String packed;
	private String meterial;
	private String size;
	private String color;
	private String efficiency;
	private String pattern;
	private String weight;
	private String frame;
	private String thickness;
	private String descrition;

	public ProductDetails() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param brandName
	 * @param supplierName
	 * @param packed
	 * @param meterial
	 * @param size
	 * @param color
	 * @param efficiency
	 * @param pattern
	 * @param weight
	 * @param frame
	 * @param thickness
	 * @param descrition
	 */
	public ProductDetails(String brandName, String supplierName, String packed, String meterial, String size,
			String color, String efficiency, String pattern, String weight, String frame, String thickness,
			String descrition) {
		this.brandName = brandName;
		this.supplierName = supplierName;
		this.packed = packed;
		this.meterial = meterial;
		this.size = size;
		this.color = color;
		this.efficiency = efficiency;
		this.pattern = pattern;
		this.weight = weight;
		this.frame = frame;
		this.thickness = thickness;
		this.descrition = descrition;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getPacked() {
		return packed;
	}

	public void setPacked(String packed) {
		this.packed = packed;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getEfficiency() {
		return efficiency;
	}

	public void setEfficiency(String efficiency) {
		this.efficiency = efficiency;
	}

	public String getPattern() {
		return pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getFrame() {
		return frame;
	}

	public void setFrame(String frame) {
		this.frame = frame;
	}

	public String getThickness() {
		return thickness;
	}

	public void setThickness(String thickness) {
		this.thickness = thickness;
	}

	public String getDescrition() {
		return descrition;
	}

	public void setDescrition(String descrition) {
		this.descrition = descrition;
	}
	
}
