package model;

import java.sql.Date;

import data.Storage;

public class Product {
	private String id;
	private String name;
	private Category category;
	private Group group;
	private String producer;
	private double price;
	private String type;
	private String decription;
	private int qualityStorage;
	private String status;
	private String imgPath;
	private Coupon coupon;
	private Date dateAdded;
	private int qualityRemaining;

	public Product() {
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
	 */
	public Product(String id, String name, String category, String group, String producer, double price, String type,
			String decription, int qualityStorage, String status, String imgPath, String coupon, Date dateAdded) {
		this.id = id;
		this.name = name;
		this.category = (Storage.getCategoryById(category) != null) ? Storage.getCategoryById(category) : null;
		this.group = (Storage.getGroupByID(group) != null) ? Storage.getGroupByID(group) : null;
		this.coupon = (Storage.getCouponByID(coupon) != null) ? Storage.getCouponByID(coupon) : null;
		this.producer = producer;
		this.price = price;
		this.type = type;
		this.decription = decription;
		this.qualityStorage = qualityStorage;
		this.status = status;
		this.imgPath = imgPath;
		this.dateAdded = dateAdded;
		this.qualityRemaining = qualityStorage;
	}

	public int getQualityRemaining() {
		return qualityRemaining;
	}

	public void setQualityRemaining(int qualityRemaining) {
		this.qualityRemaining = qualityRemaining;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = Storage.getCategoryById(category);
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = Storage.getGroupByID(group);
	}

	public String getProducer() {
		return producer;
	}

	public void setProducer(String producer) {
		this.producer = producer;
	}

	public String getPrice() {
		return FomatMonny(price);
	}

	private String FomatMonny(double p) {
		// TODO Auto-generated method stub
		String res = "";
		String pp = p + "";
		pp = pp.substring(0, pp.length() - 2);
		for (int i = pp.length(); i >= 0; i -= 3) {
			if (i > 3) {

				res = "." + pp.substring(i - 3, i) + res;
			} else
				res = pp.substring(0, i) + res;
		}
		return res + " đ";
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDecription() {
		return decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public int getQualityStorage() {
		return qualityStorage;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public void setQualityStorage(int qualityStorage) {
		this.qualityStorage = qualityStorage;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Coupon getCoupon() {
		return coupon;
	}

	public void setCoupon(Coupon coupon) {
		this.coupon = coupon;
	}

	public Date getDateAdded() {
		return dateAdded;
	}

	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ", group=" + group + ", producer="
				+ producer + ", price=" + price + ", type=" + type + ", qualityStorage=" + qualityStorage
				+ "-----------\n" ;
	}

	public static void main(String[] args) {

		int a = 1222000;
		Product p = new Product();
		System.out.println(p.FomatMonny(a));
	}

	public String getRemainingAmount() {
		String res = "Hết Hàng";
		if(qualityRemaining>0)
			return "Còn Hàng";
		
		return res;
	}

}
