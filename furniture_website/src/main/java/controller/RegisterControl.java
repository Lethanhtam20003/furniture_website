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
 * Servlet implementation class RegisterControl
 */
@WebServlet(name = "/RegisterControl", urlPatterns = { "/register" })
public class RegisterControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("con-password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phoneNum");
		String addressAcc = request.getParameter("adress-ac");
		String addressOrd = request.getParameter("address");
		//Nếu pasword != confirm thì chuyển tới trang register
		if (!password.equals(confirmPassword)) {
			request.setAttribute("errorMessage", "Passwords do not match");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {
			DaoAccount dao = new DaoAccount();
			//check xem user đã có hay chưa
			Account a = dao.checkAccountExist(username);
			if (a == null) {
				//nếu a chưa có thì được resgister
				dao.register(username, password, firstName, lastName, email, birthday, gender, phone, addressAcc,
						addressOrd);
				response.sendRedirect("index.jsp");

			} else {
				//Đẩy về trang register
				HttpSession session = request.getSession();
				session.setAttribute("acc", a);
				request.setAttribute("errorMessage", "Username is exist");
				request.getRequestDispatcher("register.jsp").forward(request, response);
			}
		}

	}

}
