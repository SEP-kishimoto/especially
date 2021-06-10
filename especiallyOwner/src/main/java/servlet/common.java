package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	 * オーナー全情報取得List化している
	 */
	public static List<HashMap<String, String>> ownerDataList(HttpServletRequest request) {
		/*
		 * HashMapを格納するリスト
		 */
		List<HashMap<String, String>> ownerList = new ArrayList<HashMap<String, String>>();
		try {
			Connection con = getConnection();
			String listQuery = getOwnerSQL(request);
			ResultSet rs = con.createStatement().executeQuery(listQuery);
			
			/*
			 * rsで取得したDB情報から、各フィールド名を取得
			 * リストに格納
			 * clumnList
			 */
			ResultSetMetaData rsmd= rs.getMetaData();
			List<String> clumnList = new ArrayList<String>();
			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				   clumnList.add(rsmd.getColumnName(i));
			}
			
			while(rs.next()) {
				HashMap<String, String> hashmap = new HashMap<String, String>();
				for (int i = 0; i < clumnList.size(); i++) {
					hashmap.put(clumnList.get(i), rs.getString(clumnList.get(i)));
				}
				ownerList.add(hashmap);
			}
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return ownerList;
	}
	
	/*
	 * 検索した内容を調べ上げる。
	 */
	public static HashMap<String, String> ownerSerchDataRequest(HttpServletRequest request) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		Enumeration<?> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			String paramValue = request.getParameter(paramName);
			hashmap.put(paramName, paramValue);
		}
		return hashmap;
	}
	
	/*
	 * SQL文を発行する箇所。
	 * 全文、検索文で分岐する処理を作成中。
	 */
	public static String getOwnerSQL(HttpServletRequest request) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap = ownerSerchDataRequest(request);
		String sql = "";
		if (hashmap.isEmpty()) {
			sql = "SELECT * FROM `mst_owner`;";
		} else {
			sql = "SELECT * FROM `mst_owner` WHERE 0 = 0 ";
			/*
			 * 処理を試そうとした場所。
			 * for (String key : hashmap()) {
				if (!(hashmap.get(i) == null && hashmap.get(i) == "")) {
					sql += "AND '" + hashmap.get(i) + "' ";
				}
			}
			 */
			
			sql += ";";
			
		}
		
		return sql;
	}
	
}
