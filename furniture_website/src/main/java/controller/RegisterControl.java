package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoAccount;
import model.Account;

/**
 * Servlet implementation class RegisterControl
 */
@WebServlet(name="/RegisterControl" ,urlPatterns = { "/register" })
public class RegisterControl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 	String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String confirmPassword = request.getParameter("con-password");
	        String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String email = request.getParameter("email");
	        String address = request.getParameter("address");	
	        String birthday = request.getParameter("birthday");
	        		if(!password.equals(confirmPassword)) {
			response.sendRedirect("register.jsp");
		}else {
			DaoAccount dao = new DaoAccount();
			Account a = dao.checkAccountExist(username);
			if(a==null) {
				//được đăng kí
				dao.register(username, password, firstName, lastName, email, address, birthday);
				response.sendRedirect("index.jsp");
				
			}else {
				//đẩy về trang login.jsp
				response.sendRedirect("login.jsp");
			}
		}
		//Tiếp tục đăng ký
		
	}

}
