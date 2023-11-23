package model;

import java.sql.Date;
import java.util.List;

public class ProductReview {
	private String productReviewID;
	private Account account;
	private int rating;
	private String title;
	private Date createAt;
	private int likes;
	private int dislikes;
	private List<Comment> listComment;

	public ProductReview() {
		// TODO Auto-generated constructor stub
	}

}
