package dao;

import java.util.ArrayList;
import java.util.List;

import model.Cart;

public class DaoCart implements IDao<Cart> {
	private String idAcount;

	String tableName = "CartItem";
	String cartID = "cartID";
	String accountID = "accountID";
	String shppingCost = "shppingCost";
	String totalPriceSelected = "totalPriceSelected";

	public DaoCart(String idAcount) {
		this.idAcount = idAcount;
	}

	@Override
	public List<Cart> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart selectByID(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertAll(ArrayList<Cart> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Cart> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Cart t) {
		// TODO Auto-generated method stub
		return false;
	}

}
