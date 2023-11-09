package model;

public class report {
	private String id;
	private String content;
	private User user;

	public report() {
	}

	/**
	 * @param id
	 * @param content
	 * @param user
	 */
	public report(String id, String content, User user) {
		this.id = id;
		this.content = content;
		this.user = user;
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

}
