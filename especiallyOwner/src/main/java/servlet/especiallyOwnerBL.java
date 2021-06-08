package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class especiallyOwnerBL
 */
@WebServlet("/especiallyOwnerBL")
public class especiallyOwnerBL extends HttpServlet { 
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public especiallyOwnerBL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * 文字コード設定
		 */
		request.setCharacterEncoding("UTF-8");
		
		ArrayList<ownerBean> ownerList = new ArrayList<ownerBean>();
		ownerList = common.getOwnerList();
		
		request.setAttribute("ownerList", ownerList);
		
		getServletContext().getRequestDispatcher("/owner.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
