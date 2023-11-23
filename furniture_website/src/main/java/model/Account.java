package model;

import java.sql.Date;

public class Account extends Person{
	private String accountName;
	private String password;
	private String emaill;
	private Date createAt;
	private Date lastLogin;
	private Date birthday;
	private String phoneNum;
	private String addressAccount;
	private String addressOrder;
	private Cart cart;
	private Order order;

	public Account() {
		// TODO Auto-generated constructor stub
	}
}
