package test_dao;

import dao.DaoProduct;
import data.Storage;
import junit.framework.TestCase;
import model.ProHandmade;

public class TDaoProduct extends TestCase implements ITestDao {

	@Override
	public void testSelectAll() {
		Storage s = new Storage();
		DaoProduct p = s.getDaoProduct();
		System.out.println(p.selectAll());
	}

	@Override
	public void testSelectById() {
		Storage s = new Storage();
		DaoProduct p = s.getDaoProduct();
		System.out.println(p.selectByID("p001"));
	}

	@Override
	public void testInsertAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void testInsert() {
		Storage s = new Storage();
		DaoProduct p = s.getDaoProduct();
		ProHandmade pro = new ProHandmade("p013", "ban hai tang", "c003", "gr001", "", 200000, "", 20, "","", "handMade",
				"do", "50*50", "nho va nhe", "2 nam","");
		System.out.println(pro.toString());

		System.out.println( p.insert(pro));
		System.out.println(p.selectByID("p013"));
	}

	@Override
	public void testDeleteAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void testDelete() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testUpdate() {
		// TODO Auto-generated method stub

	}

}
