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
 * Servlet implementation class productFiltering
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String acction = request.getParameter("acction");
		String type = request.getParameter("type");
		switch (acction) {
		case "fillteringByType":
			fillteringByType(session, request, response, type);
			break;
		case "fillterByPrice":
			int cost = Integer.parseInt(request.getParameter("price"));
			fillterByPrice(session, request, response, cost);
			break;
		case "softByPrice":
			int arrangeNum_softByPrice = Integer.parseInt(request.getParameter("arrangeNum_softByPrice"));

			softByPrice(session, request, response, arrangeNum_softByPrice);
			break;
		case "softByDate":
			int arrangeNum_softByDate = Integer.parseInt(request.getParameter("arrangeNum_softByDate"));
			softByDate(session, request, response, arrangeNum_softByDate);
			break;

		default:
			// TODO errolpage
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void fillteringByType(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			String type) throws ServletException, IOException {
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
		request.setAttribute("category", category);
		request.setAttribute("acction", "fillter");
		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("listProductThenfillterByPrice");
		System.out.println("ds " + listProduct);
		if (listProduct == null) {
			listProduct = (ArrayList<Product>) session.getAttribute("listProduct");
		}
		functions.Fillter fill = new Fillter();
		List<Product> listThenFillter = fill.fillterCatategory(listProduct, type);
		session.setAttribute("categoryType", type);
		session.setAttribute("listProductThenFillterByType", listThenFillter);
		getServletContext().getRequestDispatcher("/PhanTrang?curentPage=0&acction=fillterByType").forward(request,
				response);
	}

	private void fillterByPrice(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			int price) throws ServletException, IOException {
		List<Product> listProduct = new ArrayList<Product>();
		List<Product> fillterList = new ArrayList<Product>();
		if (session.getAttribute("listProductThenFillterByType") != null
				&& session.getAttribute("listProductThenFillterByPrice") != null) {
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByType");
		} else if (session.getAttribute("listProductThenFillterByType") != null) {
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByType");
		} else if (listProduct == null) {
			listProduct = (ArrayList<Product>) session.getAttribute("listProduct");
		}
		functions.Fillter fillter = new Fillter();
		List<Product> listThenFillter = fillter.getProductSmallerThenCost(listProduct, price);
		if (session.getAttribute("listProductThenFillterByType") != null) {
			fillterList = listThenFillter;
			session.setAttribute("fillterList", fillterList);
		}
		session.setAttribute("priceCost", price);
		session.setAttribute("listProductThenFillterByPrice", listThenFillter);
		System.out.println(listThenFillter);
		getServletContext().getRequestDispatcher("/PhanTrang?curentPage=0&acction=fillterByPrice").forward(request,
				response);

	}

	private void softByPrice(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			int arrangeNum_softByPrice) throws ServletException, IOException {

		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("fillterList");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByType");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByPrice");
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
			int arrangeNum_softByDate) throws ServletException, IOException {
		List<Product> listProduct = (ArrayList<Product>) session.getAttribute("fillterList");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByType");
		if (listProduct == null)
			listProduct = (ArrayList<Product>) session.getAttribute("listProductThenFillterByPrice");
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
