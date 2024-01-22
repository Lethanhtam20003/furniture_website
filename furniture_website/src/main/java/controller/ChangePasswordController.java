package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoAccount;
import model.Account;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet(urlPatterns={"/change"})
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String currentPass= request.getParameter("currentpass");
		String newPass = request.getParameter("newpass");
		DaoAccount dao = new DaoAccount();
		Account a = dao.checkAccountExist(user);
		if(currentPass.equals(newPass)) {
			request.setAttribute("errorMessage","Password is incorrect" );
			request.getRequestDispatcher("changePassword.jsp").forward(request, response);	
		} else {
			if(a== null) {
				
			}else {
			//ĐÚng
			Account ac = new Account(user, newPass);
			dao.change(ac);
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			response.sendRedirect("login.jsp");
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
