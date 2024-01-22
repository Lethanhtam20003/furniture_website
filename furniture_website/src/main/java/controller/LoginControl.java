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
 * Servlet implementation class LoginControl
 */
@WebServlet(name = "/LoginControl", urlPatterns = { "/login" })
public class LoginControl extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		DaoAccount daoAc = new DaoAccount();
		Account a =  daoAc.login(username, password);
		if(a==null) {
			//Nếu người dùng login sai thì đẩy về trang login
			request.setAttribute("mess", "Wrong user or pass");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else {
			//Login thành công đẩy về index
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
			
		}
}
