package test_dao;

import dao.DaoProduct;
import data.Storage;
import junit.framework.TestCase;
import model.ProHandmade;
import model.Product;

public class TDaoProduct extends TestCase implements ITestDao {
	Storage s = new Storage();
	DaoProduct p = s.getDaoProduct();

	@Override
	public void testSelectAll() {
		// TODO Auto-generated method stub
		System.out.println(p.selectAll());
	}

	@Override
	public void testSelectById() {
		// TODO Auto-generated method stub
		System.out.println(p.selectByID("p001"));
	}

	@Override
	public void testinsertAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testinsert() {
		// TODO Auto-generated method stub
		ProHandmade pro = new ProHandmade("p010", "ghe xoay", "c001", "gr001", "nha og ba", 200000, "nha toi ba doi lam bac si", 50, "do", "type", "50*50", "ghe xoay chan 6 ", "2-3 nam", "");	
		p.insert(pro);
		DaoProduct p = s.getDaoProduct();
		
	}

	@Override
	public void testdeleteAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testdelete() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testupdate() {
		// TODO Auto-generated method stub

	}

}
