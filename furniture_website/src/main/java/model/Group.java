package model;

public class Group {
	private String groupID;
	private String name;
	private String content;

	public Group() {
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * @param groupID
	 * @param name
	 * @param content
	 */
	public Group(String groupID, String name, String content) {
		this.groupID = groupID;
		this.name = name;
		this.content = content;
	}


	public String getGroupID() {
		return groupID;
	}

	public void setGroupID(String groupID) {
		this.groupID = groupID;
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
		return "\n groupID=" + groupID + ", name=" + name + ", content=" + content + "";
	}

}
