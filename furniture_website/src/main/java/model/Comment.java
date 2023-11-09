package model;

public class Comment {
	private String id;
	private String content;
	private User user;
	private int like;
	private int dislike;

	/**
	 * @param id
	 * @param content
	 * @param user
	 * @param like
	 * @param dislike
	 */
	public Comment(String id, String content, User user, int like, int dislike) {
		this.id = id;
		this.content = content;
		this.user = user;
		this.like = like;
		this.dislike = dislike;
	}

	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}

	public int getDislike() {
		return dislike;
	}

	public void setDislike(int dislike) {
		this.dislike = dislike;
	}

}
