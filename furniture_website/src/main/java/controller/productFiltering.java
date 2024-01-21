package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import functions.Fillter;
import functions.Soft;
import model.Product;

/**
 * Servlet implementation class productFiltering2
 */
@WebServlet("/productFiltering")
public class productFiltering extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public productFiltering() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String acction = request.getParameter("acction");
		String type = request.getParameter("type");
		String price = request.getParameter("price");

		switch (acction) {
		case "fillter":
			filltering(session, request, response, type, price);
			break;
		case "softByPrice":
			int arrangeNum_softByPrice = Integer.parseInt(request.getParameter("arrangeNum_softByPrice"));

			softByPrice(session, request, response, arrangeNum_softByPrice, type, price);
			break;
		case "softByDate":
			int arrangeNum_softByDate = Integer.parseInt(request.getParameter("arrangeNum_softByDate"));
			softByDate(session, request, response, arrangeNum_softByDate, type, price);
			break;

		default:
			// TODO errolpage
		}
	}

	private void filltering(HttpSession session, HttpServletRequest request, HttpServletResponse response, String type,
			String price) throws ServletException, IOException {
		// hien thi danh muc nao dang duoc loc
		String category = getCategory(type);
		request.setAttribute("category", category);
		request.setAttribute("acction", "fillter");
		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("listProduct");
		List<Product> listThenFillter = new ArrayList<Product>(listProduct);
		if (!type.equals("")) {
			functions.Fillter fill = new Fillter();
			listThenFillter = fill.fillterCatategory(listProduct, type);
		}
		if (!price.equals("")) {
			functions.Fillter fillter = new Fillter();
			int priceValue = Integer.parseInt(price);
			listThenFillter = fillter.getProductSmallerThenCost(listThenFillter, priceValue);
		}
		request.setAttribute("type", type);
		request.setAttribute("price", price);
		session.setAttribute("categoryType", type);
		session.setAttribute("listProductThenFillter", listThenFillter);
		getServletContext().getRequestDispatcher("/PhanTrang?curentPage=0&acction=fillter").forward(request, response);
	}

	private String getCategory(String type) {
		// TODO Auto-generated method stub
		String category = "";
		switch (type) {
		case "decorativeLights":
			category = "Đèn Trang Trí";
			break;
		case "decoration":
			category = "Đồ Trang Trí";
			break;
		case "furniture":
			category = "Đồ Nội Thất";
			break;
		case "sanitaryEquiment":
			category = "Thiết Bị Vệ Sinh";
			break;
		case "handMade":
			category = "Đồ Thủ Công";
			break;

		}
		return category;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void softByPrice(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			int arrangeNum_softByPrice, String type, String price) throws ServletException, IOException {

		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillter");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProduct");
		functions.Soft soft = new Soft();
		List<Product> listThenSoft = soft.softByPrice(listProduct, arrangeNum_softByPrice);
		if (arrangeNum_softByPrice == 2)

			request.setAttribute("arrangeNum_softByPrice", 0);
		else
			request.setAttribute("arrangeNum_softByPrice", ++arrangeNum_softByPrice);

		if (listThenSoft.size() != 0) {
			session.setAttribute("listProductThenSoft", listThenSoft);
		} else if (listThenSoft.size() == 0) {
			session.setAttribute("listProductThenSoft", (ArrayList<Product>) session.getAttribute("listProduct"));
		}
		getServletContext().getRequestDispatcher("/PhanTrang?curentPage=0&acction=softByPrice").forward(request,
				response);
	}

	private void softByDate(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			int arrangeNum_softByDate, String type, String price) throws ServletException, IOException {
		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillter");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProduct");
		functions.Soft soft = new Soft();
		List<Product> listThenSoft = soft.softByDate(listProduct, arrangeNum_softByDate);
		if (arrangeNum_softByDate == 2)
			request.setAttribute("arrangeNum_softByDate", 0);
		else
			request.setAttribute("arrangeNum_softByDate", ++arrangeNum_softByDate);

		if (listThenSoft.size() != 0) {
			session.setAttribute("listProductThenSoft", listThenSoft);
		} else if (listThenSoft.size() == 0) {
			session.setAttribute("listProductThenSoft", (ArrayList<Product>) session.getAttribute("listProduct"));
		}
		getServletContext().getRequestDispatcher("/PhanTrang?curentPage=0&acction=softByPrice").forward(request,
				response);

	}

}
