package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.Storage;
import model.Account;
import model.Cart;
import model.Coupon;

/**
 * Servlet implementation class couponControler
 */
@WebServlet("/couponControler")
public class couponControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public couponControler() {
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
		Storage storage = (Storage) session.getAttribute("data");
		String action = request.getParameter("couponID");
		String couponID = request.getParameter("couponID");

		switch (action) {
		case "showPage":
			GetCoupon(session, request, response, storage, couponID);
			break;

		}
	}

	private void GetCoupon(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			Storage storage, String couponID) throws IOException {
		Coupon coupon = null;
		for (Coupon c : storage.getListCoupon()) {
			if (c.getID().equalsIgnoreCase(couponID)) {
				coupon = c;
			}
		}
		request.setAttribute("coupon", coupon);
		response.sendRedirect(request.getHeader("Referer"));

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
