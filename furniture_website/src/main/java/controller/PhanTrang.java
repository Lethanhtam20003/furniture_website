package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;

/**
 * Servlet implementation class PhanTrang
 */
@WebServlet("/PhanTrang")
public class PhanTrang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PhanTrang() {
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
		List<Product> dangSach = (ArrayList<Product>) session.getAttribute("listProduct");
		int curentPage = Integer.parseInt(request.getParameter("curentPage"));
		int pageNum = dangSach.size() / 8;
		if (curentPage > pageNum) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/loi.jsp");
			dispatcher.forward(request, response);

		}
		int pageSite = 8, startIndex, endIndex;
		List<Product> listCurent = new ArrayList<Product>();
		startIndex = curentPage * pageSite;
		endIndex = startIndex + ((curentPage != pageNum) ? pageSite : dangSach.size() - pageSite * curentPage);
		for (int i = startIndex; i < endIndex; i++) {
			listCurent.add(dangSach.get(i));
		}

		session.setAttribute("listCurent", listCurent);
		session.setAttribute("pageNum", pageNum);
		request.getServletContext().getRequestDispatcher("/showProduct.jsp").forward(request, response);
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
