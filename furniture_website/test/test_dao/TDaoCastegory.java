package test_dao;

import dao.DaoCategory;
import junit.framework.TestCase;

public class TDaoCastegory extends TestCase implements ITestDao {

	@Override
	public void testSelectAll() {
		// TODO Auto-generated method stub
		DaoCategory c = new DaoCategory();
		System.out.println(c.selectAll().toString());
	}

	@Override
	public void testSelectById() {
		// TODO Auto-generated method stub
		DaoCategory c = new DaoCategory();
		System.out.println(c.selectByID("c001").toString());
	}

	@Override
	public void testInsertAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testInsert() {
		// TODO Auto-generated method stub

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
