
package model;

public class Factory {

	public static Product createProduct(String id, String productName, String categoryID, String groupID,
			String producer, double price, String type, String decription, int quallityInStorageThen, String status,
			String packeged, String brandOrigin, String meterial, String size, String wattage, String color,
			String thickness, String space, String design, String timeToUse) {

		Product p = null;
		if (type.equalsIgnoreCase("decoration")) {
			p = new ProDecoration(id, productName, categoryID, groupID, producer, price, decription,
					quallityInStorageThen, status, type, status, color, thickness);
		} else if (type.equalsIgnoreCase("decorativeLights")) {
			p = new ProDecorativeLights(id, productName, categoryID, groupID, producer, price, decription,
					quallityInStorageThen, status, type, space, brandOrigin, meterial, status, wattage);
		} else if (type.equalsIgnoreCase("handMade")) {

		} else if (type.equalsIgnoreCase("sanitaryEquiment")) {

		}

		return p;
	}

}
