package servlet;

import java.sql.Connection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class ownerModel {
	/*
	 * 登録予定情報を連想配列化
	 */
	public HashMap<String, String> ownerDataRequest(HttpServletRequest request) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		Enumeration<?> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			String paramValue = request.getParameter(paramName);
			hashmap.put(paramName, paramValue);
		}
		hashmap.put("STATUS", config.STATUS_ENABLE);
		hashmap.put("REGIST_DATE", config.REGIST_DATE);
		hashmap.put("UPDATE_DATE", config.REGIST_DATE);
		hashmap.put("UPDATE_USER_ID", config.UPDATE_USER_ID);
		return hashmap;
	}
	
	/*
	 * 現在の時刻を取得
	 * 型 String
	 */
	public static String getNowDateTime() {
    	DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(System.currentTimeMillis());
		return df.format(date);
    }
	
	/*
	 * オーナー情報をDBへ登録
	 * insert実行
	 */
	public void ownerListInsert(HashMap<String, String> ownerList) {
		try {
			Connection con = common.getConnection();
			String InsQuery = "INSERT INTO `mst_owner`(`CUST_ID`, `OWNER_KIND`, `OWNER_CORP_NAME`, `OWNER_CORP_NAME_KANA`, "
					+ "`OWNER_DEPARTMENT_NAME`, `OWNER_L_NAME`, `OWNER_F_NAME`, `OWNER_L_NAME_KANA`, `OWNER_F_NAME_KANA`, `OWNER_ZIP`, "
					+ "`OWNER_PREFECTURE`, `OWNER_ADDRESS1`, `OWNER_ADDRESS2`, `OWNER_TEL1`, `OWNER_TEL2`, `OWNER_TEL3`, `OWNER_MOBILE1`, "
					+ "`OWNER_MOBILE2`, `OWNER_MOBILE3`, `OWNER_MAIL`, `STATUS`, `REGIST_DATE`, `UPDATE_DATE`, `UPDATE_USER_ID`)"
					+ "VALUES ("
					+ Integer.parseInt(ownerList.get("CUST_ID")) + ", " + ownerList.get("OWNER_KIND") + ", '" + ownerList.get("OWNER_CORP_NAME") + "', '"
					+ ownerList.get("OWNER_CORP_NAME_KANA") + "', '" + ownerList.get("OWNER_DEPARTMENT_NAME") + "', '"
					+ ownerList.get("OWNER_L_NAME") + "', '" + ownerList.get("OWNER_F_NAME") + "', '"
					+ ownerList.get("OWNER_L_NAME_KANA") + "', '" + ownerList.get("OWNER_F_NAME_KANA") + "', '"
					+ ownerList.get("OWNER_ZIP") + "', " + Integer.parseInt(ownerList.get("OWNER_PREFECTURE")) + ", '" + ownerList.get("OWNER_ADDRESS1") + "', '"
					+ ownerList.get("OWNER_ADDRESS2") + "', '" + ownerList.get("OWNER_TEL1") + "', '"
					+ ownerList.get("OWNER_TEL2") + "', '" + ownerList.get("OWNER_TEL3") + "', '" + ownerList.get("OWNER_MOBILE1") + "', '" 
					+ ownerList.get("OWNER_MOBILE2") + "', '" + ownerList.get("OWNER_MOBILE3") + "', '" + ownerList.get("OWNER_MAIL") + "', "
					+ Integer.parseInt(ownerList.get("STATUS")) + ", '" + ownerList.get("REGIST_DATE") + "', '"+ ownerList.get("UPDATE_DATE") + "', " 
					+ Integer.parseInt(ownerList.get("UPDATE_USER_ID")) +");";
			con.createStatement().executeUpdate(InsQuery);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}
}
