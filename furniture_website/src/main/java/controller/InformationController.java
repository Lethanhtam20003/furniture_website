package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Account;

/**
 * Servlet implementation class InformationController
 */
@WebServlet("/infor")
public class InformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String birth = request.getParameter("birthday");
        
        // Chuyển đổi chuỗi ngày tháng thành đối tượng Date
        Date birthday = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            birthday = (Date) sdf.parse(birth);
        } catch (ParseException e) {
            e.printStackTrace(); // Xử lý ngoại lệ nếu có
        }

        
        Account acc = new Account();
        acc.setFirstName(firstName);
        acc.setLastName(lastName);
        acc.setPhoneNum(phoneNumber);
        acc.setEmaill(email);
        acc.setAddressAccount(address);
        acc.setGender(gender);
        acc.setBirthday(birthday);
        

        // Đặt đối tượng Customer vào request để có thể truy cập từ trang JSP
        request.setAttribute("account", acc);

        // Chuyển hướng đến trang JSP
        request.getRequestDispatcher("/customerÌnor.jsp").forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
