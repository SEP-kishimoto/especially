package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class comfirmBL
 */
@WebServlet("/comfirmBL")
public class comfirmBL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public comfirmBL() {
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
		
		/*
		 * request情報取得
		 */
		ownerModel ownermodel = new ownerModel();
		System.out.println(ownermodel.ownerDataRequest(request));
		
		/*
		 * DBへ登録
		 */
		ownermodel.ownerListInsert(ownermodel.ownerDataRequest(request));
		
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
