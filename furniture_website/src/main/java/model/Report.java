package model;

public class Report {
	private String id;
	private String content;
	private Account author;
	private Account accountTarget;
	private String reportType;

	public Report() {
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

	public Account getAuthor() {
		return author;
	}

	public void setAuthor(Account author) {
		this.author = author;
	}

	public Account getAccountTarget() {
		return accountTarget;
	}

	public void setAccountTarget(Account accountTarget) {
		this.accountTarget = accountTarget;
	}

	public String getReportType() {
		return reportType;
	}

	public void setReportType(String reportType) {
		this.reportType = reportType;
	}

}
