package functions;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import model.Product;

public class Soft {

	public List<Product> softByPrice(List<Product> listProduct, boolean arrange) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> softByPrice(List<Product> listProduct, int arrangeNum_softByDate) {
		List<Product> res = new ArrayList<Product>(listProduct);
		switch (arrangeNum_softByDate) {
		case 0:
			res.sort(new Comparator<Product>() {

				@Override
				public int compare(Product o1, Product o2) {
					// TODO Auto-generated method stub
					return (int) (o1.getPriceValue() - o2.getPriceValue());
				}

			});
			break;
		case 1:
			res.sort(new Comparator<Product>() {

				@Override
				public int compare(Product o1, Product o2) {
					// TODO Auto-generated method stub
					return (int) (o2.getPriceValue() - o1.getPriceValue());
				}

			});
			break;
		case 2:
			return new ArrayList<Product>();
		}

		return res;
	}

	public List<Product> softByDate(List<Product> listProduct, int arrangeNum_softByDate) {
		List<Product> res = new ArrayList<Product>(listProduct);
		switch (arrangeNum_softByDate) {
		case 0:
			res.sort(new Comparator<Product>() {

				@Override
				public int compare(Product o1, Product o2) {
					// TODO Auto-generated method stub
					return (int) (o1.getDateAdded().compareTo(o2.getDateAdded()));
				}

			});
			break;
		case 1:
			res.sort(new Comparator<Product>() {

				@Override
				public int compare(Product o1, Product o2) {
					// TODO Auto-generated method stub
					return (int) (o2.getDateAdded().compareTo(o1.getDateAdded()));
				}

			});
			break;
		case 2:
			return new ArrayList<Product>();
		}

		return res;
	}

}
