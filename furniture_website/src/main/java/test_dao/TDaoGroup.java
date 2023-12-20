package test_dao;

import dao.DaoGroup;
import junit.framework.TestCase;

public class TDaoGroup extends TestCase implements ITestDao {

	@Override
	public void testSelectAll() {
		// TODO Auto-generated method stub
		DaoGroup c = new DaoGroup();
		System.out.println(c.selectAll().toString());

	}

	@Override
	public void testSelectById() {
		// TODO Auto-generated method stub

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
