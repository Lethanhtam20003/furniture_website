package model1;

import java.sql.Date;

public class Coupon {
	private String id;
	private String code;
	private double discountAmount;
	private String discountType;
	private Date expirationDate;
	private double usageCount;
	private double minimumPurchaseAmount;
	private boolean isActive;
	private Date createAT;
	private Date updateAt;
	private String description;
	private String[] userLimit;

	/**
	 * 
	 */
	public Coupon() {
	}

	/**
	 * @param id
	 * @param code
	 * @param discountAmount
	 * @param discountType
	 * @param expirationDate
	 * @param usageCount
	 * @param minimumPurchaseAmount
	 * @param isActive
	 * @param createAT
	 * @param updateAt
	 * @param description
	 * @param userLimit
	 */
	public Coupon(String id, String code, double discountAmount, String discountType, Date expirationDate,
			double usageCount, double minimumPurchaseAmount, boolean isActive, Date createAT, Date updateAt,
			String description, String[] userLimit) {
		this.id = id;
		this.code = code;
		this.discountAmount = discountAmount;
		this.discountType = discountType;
		this.expirationDate = expirationDate;
		this.usageCount = usageCount;
		this.minimumPurchaseAmount = minimumPurchaseAmount;
		this.isActive = isActive;
		this.createAT = createAT;
		this.updateAt = updateAt;
		this.description = description;
		this.userLimit = userLimit;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public double getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(double discountAmount) {
		this.discountAmount = discountAmount;
	}

	public String getDiscountType() {
		return discountType;
	}

	public void setDiscountType(String discountType) {
		this.discountType = discountType;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public double getUsageCount() {
		return usageCount;
	}

	public void setUsageCount(double usageCount) {
		this.usageCount = usageCount;
	}

	public double getMinimumPurchaseAmount() {
		return minimumPurchaseAmount;
	}

	public void setMinimumPurchaseAmount(double minimumPurchaseAmount) {
		this.minimumPurchaseAmount = minimumPurchaseAmount;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public Date getCreateAT() {
		return createAT;
	}

	public void setCreateAT(Date createAT) {
		this.createAT = createAT;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String[] getUserLimit() {
		return userLimit;
	}

	public void setUserLimit(String[] userLimit) {
		this.userLimit = userLimit;
	}

}
