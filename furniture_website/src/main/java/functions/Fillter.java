package functions;

import java.util.ArrayList;
import java.util.List;

import model.Product;

public class Fillter {
	public Fillter() {
	}

	public List<Product> fillterCatategory(List<Product> listProduct, String type) {
		// TODO Auto-generated method stub
		List<Product> res = new ArrayList<Product>();
		for (Product product : listProduct) {
			if (product.getType().equalsIgnoreCase(type)) {
				res.add(product);
			}
		}
		return res;
	}

	public List<Product> getProductSmallerThenCost(List<Product> listProduct, int cost) {
		List<Product> res = new ArrayList<Product>();
		for (Product product : listProduct) {
			if (product.getPriceValue() < cost) {
				switch (cost) {
				case 100000:
					if (product.getPriceValue() <= 100000)
						res.add(product);
					break;
				case 500000:
					if (product.getPriceValue() > 100000 && product.getPriceValue() <= 500000)
						res.add(product);
					break;
				case 1000000:
					if (product.getPriceValue() > 500000 && product.getPriceValue() <= 1000000)
						res.add(product);
					break;
				case 2000000:
					if (product.getPriceValue() > 1000000 && product.getPriceValue() <= 2000000)
						res.add(product);
					break;
				case 5000000:
					if (product.getPriceValue() > 2000000 && product.getPriceValue() < 5000000)
						res.add(product);
					break;

				default:
					throw new IllegalArgumentException("Unexpected value: " + cost);
				}
			}
		}
		return res;
	}

}
