package dao;

import java.util.ArrayList;
import java.util.List;

import model.Coupon;

public class DaoCoupon implements IDao<Coupon> {
public DaoCoupon() {
	// TODO Auto-generated constructor stub
}
	@Override
	public List<Coupon> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Coupon> res = new ArrayList<Coupon>();

		return res;
	}

	@Override
	public Coupon selectByID(String t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertAll(ArrayList<Coupon> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean insert(Coupon t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAll(ArrayList<Coupon> arr) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Coupon t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Coupon t) {
		// TODO Auto-generated method stub
		return false;
	}

}
