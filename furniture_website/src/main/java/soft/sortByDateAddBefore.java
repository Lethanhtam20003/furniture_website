package soft;

import java.util.Comparator;

import model.Product;

public class sortByDateAddBefore implements Comparator<Product> {

	@Override
	public int compare(Product o1, Product o2) {
		// TODO Auto-generated method stub
		return o1.getDateAdded().compareTo(o2.getDateAdded());
	}

}
