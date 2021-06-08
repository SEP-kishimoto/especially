package servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
    public static String getNowDateTime() {
    	DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(System.currentTimeMillis());
		return df.format(date);
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
		
		
		/*
		 * 
		try {
			Connection con = common.getConnection();
			String InsQuery = "INSERT INTO `mst_owner`(`CUST_ID`, `OWNER_KIND`, `OWNER_CORP_NAME`, `OWNER_CORP_NAME_KANA`, "
					+ "`OWNER_DEPARTMENT_NAME`, `OWNER_L_NAME`, `OWNER_F_NAME`, `OWNER_L_NAME_KANA`, `OWNER_F_NAME_KANA`, `OWNER_ZIP`, "
					+ "`OWNER_PREFECTURE`, `OWNER_ADDRESS1`, `OWNER_ADDRESS2`, `OWNER_TEL1`, `OWNER_TEL2`, `OWNER_TEL3`, `OWNER_MOBILE1`, "
					+ "`OWNER_MOBILE2`, `OWNER_MOBILE3`, `OWNER_MAIL`, `STATUS`, `REGIST_DATE`, `UPDATE_DATE`, `UPDATE_USER_ID`)"
					+ "VALUES ("
					+ CUST_ID + ", " + OWNER_KIND + ", '" + OWNER_CORP_NAME + "', '" + OWNER_CORP_NAME_KANA + "', '" + OWNER_DEPARTMENT_NAME + "', '"
					+ OWNER_L_NAME + "', '" + OWNER_F_NAME + "', '" + OWNER_L_NAME_KANA + "', '" + OWNER_F_NAME_KANA + "', '"
					+ OWNER_ZIP + "', " + OWNER_PREFECTURE + ", '" + OWNER_ADDRESS1 + "', '" + OWNER_ADDRESS2 + "', '" + OWNER_TEL1 + "', '"
					+ OWNER_TEL2 + "', '" + OWNER_TEL3 + "', '" + OWNER_MOBILE1 + "', '" 
					+ OWNER_MOBILE2 + "', '" + OWNER_MOBILE3 + "', '" + OWNER_MAIL + "', " + STATUS + ", '" + REGIST_DATE+ "', '"+ UPDATE_DATE + "', " + UPDATE_USER_ID +");";
			con.createStatement().executeUpdate(InsQuery);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		 */
		
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
