package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public class common {
	static Connection getConnection() throws Exception {//DB接続関数
		String user = "root";
		String password = "";
		String url = "jdbc:mysql://localhost:3306/especially?characterEncoding=UTF-8&serverTimezone=JST";
		Class.forName("com.mysql.cj.jdbc.Driver");//ドライバのロード
		Connection con = DriverManager.getConnection(url, user, password);

		/*
		 * DriverManagerがnullではないことを確認する
		 */
		return con;
	}
	
	/*
	 * オーナー全情報取得
	 * Beanを使用して、List化している
	 */
	public static ArrayList<ownerBean> getOwnerList() {
		ArrayList<ownerBean> ownerList = new ArrayList<ownerBean>();
		try {
			Connection con = getConnection();
			String listQuery = "SELECT * FROM `mst_owner`;";
			ResultSet rs = con.createStatement().executeQuery(listQuery);
			while(rs.next()) {
				ownerBean bean = new ownerBean();
				bean.setID(rs.getInt("ID"));
				bean.setCUST_ID(rs.getInt("CUST_ID"));
				bean.setOWNER_KIND(rs.getInt("OWNER_KIND"));
				bean.setOWNER_CORP_NAME(rs.getString("OWNER_CORP_NAME"));
				bean.setOWNER_CORP_NAME_KANA(rs.getString("OWNER_CORP_NAME_KANA"));
				bean.setOWNER_DEPARTMENT_NAME(rs.getString("OWNER_DEPARTMENT_NAME"));
				bean.setOWNER_L_NAME(rs.getString("OWNER_L_NAME"));
				bean.setOWNER_F_NAME(rs.getString("OWNER_F_NAME"));
				bean.setOWNER_L_NAME_KANA(rs.getString("OWNER_L_NAME_KANA"));
				bean.setOWNER_F_NAME_KANA(rs.getString("OWNER_F_NAME_KANA"));
				bean.setOWNER_ZIP(rs.getString("OWNER_ZIP"));
				bean.setOWNER_PREFECTURE(rs.getInt("OWNER_PREFECTURE"));
				bean.setOWNER_ADDRESS1(rs.getString("OWNER_ADDRESS1"));
				bean.setOWNER_ADDRESS2(rs.getString("OWNER_ADDRESS2"));
				bean.setOWNER_TEL1(rs.getString("OWNER_TEL1"));
				bean.setOWNER_TEL2(rs.getString("OWNER_TEL2"));
				bean.setOWNER_TEL3(rs.getString("OWNER_TEL3"));
				bean.setOWNER_MOBILE1(rs.getString("OWNER_MOBILE1"));
				bean.setOWNER_MOBILE2(rs.getString("OWNER_MOBILE2"));
				bean.setOWNER_MOBILE3(rs.getString("OWNER_MOBILE3"));
				bean.setOWNER_MAIL(rs.getString("OWNER_MAIL"));
				bean.setREGIST_DATE(rs.getString("REGIST_DATE"));
				bean.setSTATUS(rs.getInt("STATUS"));
				bean.setUPDATE_DATE(rs.getString("UPDATE_DATE"));
				bean.setUPDATE_USER_ID(rs.getInt("UPDATE_USER_ID"));
				ownerList.add(bean);
			}
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return ownerList;
	}
	
}
