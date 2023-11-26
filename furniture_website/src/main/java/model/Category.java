package model;

public class Category {
	private String categoryID;
	private String name;
	private String content;

	public Category() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param categoryID
	 * @param name
	 * @param content
	 */
	public Category(String categoryID, String name, String content) {
		this.categoryID = categoryID;
		this.name = name;
		this.content = content;
	}

	public String getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "\n Category [categoryID=" + categoryID + ", name=" + name + ", content=" + content + "] ";
	}

}
