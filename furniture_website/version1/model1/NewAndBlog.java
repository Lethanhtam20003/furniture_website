package model1;

import java.sql.Date;

public class NewAndBlog {
	private String id;
	private String title;
	private String content;
	private Date publication;
	private User author;
	private int views;
	private Date createAt;

	/**
	 * @param id
	 * @param title
	 * @param content
	 * @param publication
	 * @param author
	 * @param views
	 * @param createAt
	 */
	public NewAndBlog(String id, String title, String content, Date publication, User author, int views,
			Date createAt) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.publication = publication;
		this.author = author;
		this.views = views;
		this.createAt = createAt;
	}

	public NewAndBlog() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public Date getPublication() {
		return publication;
	}

	public void setPublication(Date publication) {
		this.publication = publication;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

}
