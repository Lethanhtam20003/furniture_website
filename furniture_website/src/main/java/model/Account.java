package model;

import java.sql.Date;

public class Account extends Person {
	private String accountID;
	private String accountName;
	private String password;
	private String firstName;
	private String lastName;
	private String emaill;
	private Date birthday;
	private String gender;
	private String phoneNum;
	private String addressAccount;
	private String addressOrder;
	private Date createAt;
	private Date lastLogin;
//	private Cart cart;
//	private Order order;

	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(String accountName) {
		this.accountName = accountName;
	}

	public Account(String accountName, String password) {
		this.accountName = accountName;
		this.password = password;
	}
	

	public Account(String accountID, String accountName, String password, String firstName, String lastName,
			String emaill, Date birthday, String gender, String phoneNum, String addressAccount, String addressOrder,
			Date createAt, Date lastLogin) {
		super();
		this.accountID = accountID;
		this.accountName = accountName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.emaill = emaill;
		this.birthday = birthday;
		this.gender = gender;
		this.phoneNum = phoneNum;
		this.addressAccount = addressAccount;
		this.addressOrder = addressOrder;
		this.createAt = createAt;
		this.lastLogin = lastLogin;
	}

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmaill() {
		return emaill;
	}

	public void setEmaill(String emaill) {
		this.emaill = emaill;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getAddressAccount() {
		return addressAccount;
	}

	public void setAddressAccount(String addressAccount) {
		this.addressAccount = addressAccount;
	}

	public String getAddressOrder() {
		return addressOrder;
	}

	public void setAddressOrder(String addressOrder) {
		this.addressOrder = addressOrder;
	}

//	public Cart getCart() {
//		return cart;
//	}
//
//	public void setCart(Cart cart) {
//		this.cart = cart;
//	}
//
//	public Order getOrder() {
//		return order;
//	}
//
//	public void setOrder(Order order) {
//		this.order = order;
//	}
	public boolean authenticate(String enteredPassword) {
		return this.password.equals(enteredPassword);
	}

}
