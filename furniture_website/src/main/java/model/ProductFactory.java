package model;

public class ProductFactory {

	public static Product createProduct(String id, String productName, String categoryID, String groupID,
			String wattage, String producer, double amountThen, String packeged, String brandOrigin, String meterial,
			String type, String color, String thickness, String space, String design, String timeToUse, String price,
			String decription, String status, int quallityInStorageThen) {

		Product p = null;
		if (type.equalsIgnoreCase("decoration")) {
			p = new ProDecoration(id, productName, categoryID, groupID, wattage, producer, amountThen, decription,
					quallityInStorageThen, status, status, color, thickness);
		} else if (type.equalsIgnoreCase("decorativeLights")) {
			
		} else if (type.equalsIgnoreCase("handMade")) {

		} else if (type.equalsIgnoreCase("sanitaryEquiment")) {

		}

		return p;
	}

}
