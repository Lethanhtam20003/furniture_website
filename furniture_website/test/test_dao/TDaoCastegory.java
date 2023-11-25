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
	public void testinsertAll() {
		// TODO Auto-generated method stub

	}

	@Override
	public void testinsert() {
		// TODO Auto-generated method stub

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
