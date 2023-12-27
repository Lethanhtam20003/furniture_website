package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChuyenHuongCSHD
 */
@WebServlet("/ChuyenHuongCSHD")
public class ChuyenHuongCSHD extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChuyenHuongCSHD() {
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
		String url = request.getParameter("url");
		String titleHDCS = "";
		switch (url.substring(url.indexOf("/", 2) + 1, url.length() - 4)) {
		case "ChinhSach/thanhVien":
			titleHDCS = "Chính Sách Thành Viên";
			break;
		case "ChinhSach/thanhToan":
			titleHDCS = "Chính Sách Thanh Toán";

			break;
		case "ChinhSach/doiSanPham":
			titleHDCS = "Chính Sách Đổi Sản Phẩm";
			break;
		case "ChinhSach/baoMat":
			titleHDCS = "Chính Sách Bảo Mật";
			break;
		case "ChinhSach/congTacVien":
			titleHDCS = "Chính Sách Cộng Tác Viên";
			break;
		case "HuongDan/muaHang":
			titleHDCS = "Hướng Dẫn Mua Hàng";

			break;
		case "HuongDan/DoiTra":
			titleHDCS = "Hướng Dẫn Đổi Trả";
			break;
		case "HuongDan/thanhToan":
			titleHDCS = "Hướng Dẫn Thanh Toán";
			break;
		case "HuongDan/congTacVien":
			titleHDCS = "Chương Trình Cộng Tác Viên ";
			break;
		case "HuongDan/GiaiDapThacMac":
			titleHDCS = "Giả Đáp Thắc Mắc";
			break;
		}

		session.setAttribute("url", url);
		session.setAttribute("titleHDCS", titleHDCS);
		getServletContext().getRequestDispatcher("/mapingChinhSachHuongDan.jsp").forward(request, response);
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
