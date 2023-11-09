package model;

import java.sql.Date;

public class Analytics {
	private String id;
	private int views;
	private int clicks;
	private double purchases;
	private int addedToCart;
	private int rating;
	private int review;
	private int stocleLever;
	private Date CreatAt;
	private Date updateAt;

	public Analytics() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id
	 * @param views
	 * @param clicks
	 * @param purchases
	 * @param addedToCart
	 * @param rating
	 * @param review
	 * @param stocleLever
	 * @param creatAt
	 * @param updateAt
	 */
	public Analytics(String id, int views, int clicks, double purchases, int addedToCart, int rating, int review,
			int stocleLever, Date creatAt, Date updateAt) {
		this.id = id;
		this.views = views;
		this.clicks = clicks;
		this.purchases = purchases;
		this.addedToCart = addedToCart;
		this.rating = rating;
		this.review = review;
		this.stocleLever = stocleLever;
		CreatAt = creatAt;
		this.updateAt = updateAt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getClicks() {
		return clicks;
	}

	public void setClicks(int clicks) {
		this.clicks = clicks;
	}

	public double getPurchases() {
		return purchases;
	}

	public void setPurchases(double purchases) {
		this.purchases = purchases;
	}

	public int getAddedToCart() {
		return addedToCart;
	}

	public void setAddedToCart(int addedToCart) {
		this.addedToCart = addedToCart;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}

	public int getStocleLever() {
		return stocleLever;
	}

	public void setStocleLever(int stocleLever) {
		this.stocleLever = stocleLever;
	}

	public Date getCreatAt() {
		return CreatAt;
	}

	public void setCreatAt(Date creatAt) {
		CreatAt = creatAt;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

}
