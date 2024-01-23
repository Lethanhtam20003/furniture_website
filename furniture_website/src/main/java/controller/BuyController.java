package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoOrder;
import model.Cart;
import model.CartItem;
import model.Order;
import model.OrderItem;

/**
 * Servlet implementation class BuyController
 */
@WebServlet("/BuyController")
public class BuyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BuyController() {
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

		String name = request.getParameter("cusName");
		String phone = request.getParameter("phoneNum");
		String email = request.getParameter("emial");
		String address = request.getParameter("address");
		Cart a = (Cart) session.getAttribute("cart");
		Order o = new Order("O" + System.currentTimeMillis(), "", "30.000 vnd", a.getTotalPrice(0) + "", "");

		for (CartItem i : a.getListCartItem()) {
			o.getListOrderItem().add(new OrderItem(i.getProduct(), i.getQuality(), null, i.getPrice()));
		}
		DaoOrder dor = new DaoOrder();
		if (dor.insert(o)) {
			session.setAttribute("cart", new Cart());
			getServletContext().getRequestDispatcher("/SuccessFull.jsp").forward(request, response);
		} else {

			getServletContext().getRequestDispatcher("/fail.jsp").forward(request, response);
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

}
