package model;

import java.sql.Date;

public class Coupon {
	private String ID;
	private String code;
	private double discountAmount;
	private String discountType;
	private Date createAt;
	private Date effectiveDate; // ngay co hieu luc
	private Date expirationDate; // ngay het han
	private int usageCount; // so lan su dung
	private double minimum_purchase_amount; // so tien giam toi thieu
	private boolean isActive;
	private boolean accountLimit;
	private boolean ecription;

	public Coupon() {
		// TODO Auto-generated constructor stub
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
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

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getEffectiveDate() {
		return effectiveDate;
	}

	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public int getUsageCount() {
		return usageCount;
	}

	public void setUsageCount(int usageCount) {
		this.usageCount = usageCount;
	}

	public double getMinimum_purchase_amount() {
		return minimum_purchase_amount;
	}

	public void setMinimum_purchase_amount(double minimum_purchase_amount) {
		this.minimum_purchase_amount = minimum_purchase_amount;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public boolean isAccountLimit() {
		return accountLimit;
	}

	public void setAccountLimit(boolean accountLimit) {
		this.accountLimit = accountLimit;
	}

	public boolean isEcription() {
		return ecription;
	}

	public void setEcription(boolean ecription) {
		this.ecription = ecription;
	}

}
