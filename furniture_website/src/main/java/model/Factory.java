
package model;

public class Factory {

	public static Product createProduct(String id, String productName, String categoryID, String groupID,
			String producer, double price, String type, String decription, int quallityInStorageThen, String status,
			String packeged, String brandOrigin, String meterial, String size, String wattage, String color,
			String thickness, String space, String design, String timeToUse, String imgPath) {

		Product p = null;
		if (type.equalsIgnoreCase("decoration")) {
			p = new ProDecoration(id, productName, categoryID, groupID, producer, price, type, decription,
					quallityInStorageThen, status, design, size, color, thickness, imgPath);
		} else if (type.equalsIgnoreCase("decorativeLights")) {
			p = new ProDecorativeLights(id, productName, categoryID, groupID, producer, price, type, decription,
					quallityInStorageThen, status, space, brandOrigin, meterial, size, wattage, imgPath);
		} else if (type.equalsIgnoreCase("handMade")) {
			p = new ProHandmade(id, productName, categoryID, groupID, producer, price, type, decription,
					quallityInStorageThen, status, color, size, design, timeToUse, imgPath);
		} else if (type.equalsIgnoreCase("sanitaryEquiment")) {
			p = new ProSanitaryEquiment(id, productName, categoryID, groupID, producer, price, type, decription,
					quallityInStorageThen, status, meterial, space, imgPath);
		} else if (type.equalsIgnoreCase("Furniture")) {
			p = new ProFurniture(id, productName, categoryID, groupID, producer, price, type, decription,
					quallityInStorageThen, status, brandOrigin, meterial, color, size, thickness, imgPath);
		}

		return p;
	}

}
