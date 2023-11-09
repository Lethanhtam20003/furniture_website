package model;

import java.sql.Date;
import java.util.List;

public class ProductReview {
	private String id;
	private String name;
	private int rating;
	private String title;
	private String content;
	private Date createAt;
	private Date updateAt;
	private int likes;
	private int dislikes;
	private List<report> ListReport;
	private List<Comment> listComment;
	/**
	 * @param id
	 * @param name
	 * @param rating
	 * @param title
	 * @param content
	 * @param createAt
	 * @param updateAt
	 * @param likes
	 * @param dislikes
	 * @param listReport
	 * @param listComment
	 */
	public ProductReview(String id, String name, int rating, String title, String content, Date createAt, Date updateAt,
			int likes, int dislikes, List<report> listReport, List<Comment> listComment) {
		this.id = id;
		this.name = name;
		this.rating = rating;
		this.title = title;
		this.content = content;
		this.createAt = createAt;
		this.updateAt = updateAt;
		this.likes = likes;
		this.dislikes = dislikes;
		ListReport = listReport;
		this.listComment = listComment;
	}
	/**
	 * 
	 */
	public ProductReview() {
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
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	public Date getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public int getDislikes() {
		return dislikes;
	}
	public void setDislikes(int dislikes) {
		this.dislikes = dislikes;
	}
	public List<report> getListReport() {
		return ListReport;
	}
	public void setListReport(List<report> listReport) {
		ListReport = listReport;
	}
	public List<Comment> getListComment() {
		return listComment;
	}
	public void setListComment(List<Comment> listComment) {
		this.listComment = listComment;
	}
	
}
