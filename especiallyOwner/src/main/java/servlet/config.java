package servlet;

public class  config {
	/*
	 * ステータス
	 * STATUS
	 * 有効、無効
	 */
	static final String STATUS_ENABLE = "1";
	static final String STATUS_DISENABLE = "2";
	
	/*
	 * 登録日、更新日
	 * REGIST_DATE, UPDATE_DATE
	 */
	static final String REGIST_DATE = ownerModel.getNowDateTime();
	static final String UPDATE_DATE = ownerModel.getNowDateTime();
	
	/*
	 * 更新したユーザーのIDを取得
	 * UPDATE_USER_ID
	 */
	static final String UPDATE_USER_ID = "1";
}
