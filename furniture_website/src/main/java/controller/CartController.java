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

import data.Storage;
import model.Account;
import model.Cart;
import model.CartItem;
import model.Product;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
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
		Account account = (Account) session.getAttribute("account");
		Cart carts = (Cart) session.getAttribute("Cart");
		if (carts == null) {
			if (account != null)
				// carts = new DaoCart().selectByID(account.getAccountID());
				System.out.println();
			else
				carts = new Cart();
			session.setAttribute("Cart", carts);
		}
		String action = request.getParameter("actionCart");

		String idProduct;
		int count;
		switch (action) {
		case "showPage":
			showPage(session, request, response);
			break;
		case "addCart":
			idProduct = request.getParameter("idProduct");
			count = Integer.parseInt(request.getParameter("count"));

			addCart(session, request, response, idProduct, carts, count);
			break;
		case "addCartNoForward":
			idProduct = request.getParameter("idProduct");
			count = Integer.parseInt(request.getParameter("count"));

			addCartNoForward(session, request, response, idProduct, carts, count);
			break;

		case "addQuanlity":
			idProduct = request.getParameter("idProduct");
			count = Integer.parseInt(request.getParameter("count"));
			String type = request.getParameter("type");
			if (type.equals("increment")) {
				increment(session, request, response, carts, idProduct, count);
			}
			if (type.equals("decrement")) {

				decrement(session, request, response, carts, idProduct, count);
			}
			break;
		case "selectedCart":
			idProduct = request.getParameter("idProduct");
			selected(session, request, response, carts, idProduct);

			break;
		case "removeCartItem":
			idProduct = request.getParameter("idProduct");
			removeCartItem(session, request, response, carts, idProduct);

			break;

		}
	}

	private void addCartNoForward(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			String idProduct, Cart carts, int count) throws IOException, ServletException {
		Storage storage = (Storage) session.getAttribute("data");
		Product p = storage.getListProduct().get(idProduct);
		CartItem ct = new CartItem(p, count, p.getPriceValue(), true, false, p.checkAvailable(idProduct, count));
		if (!carts.checkProductExit(idProduct)) {
			carts.getListCartItem().add(ct);
		}

		request.setAttribute("Cart", carts);
		request.setAttribute("addCartDone", "Thêm thành cong");
		response.sendRedirect(request.getHeader("Referer"));

		// getServletContext().getRequestDispatcher("/ProductList_Show.jsp").forward(request,
		// response);
	}

	private void removeCartItem(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			Cart carts, String idProduct) throws ServletException, IOException {
		for (int i = 0; i < carts.getListCartItem().size(); i++) {
			if (carts.getListCartItem().get(i).getProduct().getId().equals(idProduct)) {
				carts.getListCartItem().remove(i);
			}
		}
		session.setAttribute("Cart", carts);

		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
	}

	private void selected(HttpSession session, HttpServletRequest request, HttpServletResponse response, Cart carts,
			String idProduct) throws ServletException, IOException {
		for (CartItem i : carts.getListCartItem()) {
			System.out.println("select" + i);
			if (i.getProduct().getId().equals(idProduct)) {
				i.setSelected(!(i.isSelected()));
			}
		}
		session.setAttribute("Cart", carts);
		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
	}

	private void decrement(HttpSession session, HttpServletRequest request, HttpServletResponse response, Cart carts,
			String idProduct, int count) throws ServletException, IOException {
		// TODO Auto-generated method stub
		for (CartItem i : carts.getListCartItem()) {
			if (i.getProduct().getId().equals(idProduct)) {
				if (count <= 1) {
					i.setQuality(1);
				} else
					i.setQuality(--count);
			}
		}
		session.setAttribute("Cart", carts);
		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
	}

	private void increment(HttpSession session, HttpServletRequest request, HttpServletResponse response, Cart carts,
			String idProduct, int count) throws ServletException, IOException {
		for (CartItem i : carts.getListCartItem()) {
			if (i.getProduct().getId().equals(idProduct)) {

				i.setQuality(++count);
			}
		}
		session.setAttribute("Cart", carts);
		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);

	}

	private void addCart(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			String idProduct, Cart carts, int count) throws ServletException, IOException {
		Storage storage = (Storage) session.getAttribute("data");
		Product p = storage.getListProduct().get(idProduct);
		CartItem ct = new CartItem(p, count, p.getPriceValue(), true, false, p.checkAvailable(idProduct, count));
		if (!carts.checkProductExit(idProduct)) {
			carts.getListCartItem().add(ct);
		}

		session.setAttribute("Cart", carts);
		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
	}

	private void showPage(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Cart> listCart = (ArrayList<Cart>) session.getAttribute("listCart");

		getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
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

}
