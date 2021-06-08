package servlet;

public class ownerBean {
	
	/*
	 * private 変数
	 * 倉庫に入れておくべきデータ
	 */
	private int ID;
	private int CUST_ID;
	private int OWNER_KIND;
	private String OWNER_CORP_NAME;
	private String OWNER_CORP_NAME_KANA;
	private String OWNER_DEPARTMENT_NAME;
	private String OWNER_L_NAME;
	private String OWNER_F_NAME;
	private String OWNER_L_NAME_KANA;
	private String OWNER_F_NAME_KANA;
	private String OWNER_ZIP;
	private int OWNER_PREFECTURE;
	private String OWNER_ADDRESS1;
	private String OWNER_ADDRESS2;
	private String OWNER_TEL1;
	private String OWNER_TEL2;
	private String OWNER_TEL3;
	private String OWNER_MOBILE1;
	private String OWNER_MOBILE2;
	private String OWNER_MOBILE3;
	private String OWNER_MAIL;
	private int STATUS;
	private String REGIST_DATE;
	private String UPDATE_DATE;
	private int UPDATE_USER_ID;
	
	/*
	 * 引数のないコンストラクタ
	 */
	ownerBean(){};
	
	public void setID(int ID) {
		this.ID = ID;
	}
	public void setCUST_ID(int CUST_ID) {
		this.CUST_ID = CUST_ID;
	}
	public void setOWNER_KIND(int OWNER_KIND) {
		this.OWNER_KIND = OWNER_KIND;
	}
	public void setOWNER_CORP_NAME(String OWNER_CORP_NAME) {
		this.OWNER_CORP_NAME = OWNER_CORP_NAME;
	}
	public void setOWNER_CORP_NAME_KANA(String OWNER_CORP_NAME_KANA) {
		this.OWNER_CORP_NAME_KANA = OWNER_CORP_NAME_KANA;
	}
	public void setOWNER_DEPARTMENT_NAME(String OWNER_DEPARTMENT_NAME) {
		this.OWNER_DEPARTMENT_NAME = OWNER_DEPARTMENT_NAME;
	}
	public void setOWNER_L_NAME(String OWNER_L_NAME) {
		this.OWNER_L_NAME = OWNER_L_NAME;
	}
	public void setOWNER_F_NAME(String OWNER_F_NAME) {
		this.OWNER_F_NAME = OWNER_F_NAME;
	}
	public void setOWNER_L_NAME_KANA(String OWNER_L_NAME_KANA) {
		this.OWNER_L_NAME_KANA = OWNER_L_NAME_KANA;
	}
	public void setOWNER_F_NAME_KANA(String OWNER_F_NAME_KANA) {
		this.OWNER_F_NAME_KANA = OWNER_F_NAME_KANA;
	}
	public void setOWNER_ZIP(String OWNER_ZIP) {
		this.OWNER_ZIP = OWNER_ZIP;
	}
	public void setOWNER_PREFECTURE(int OWNER_PREFECTURE) {
		this.OWNER_PREFECTURE = OWNER_PREFECTURE;
	}
	public void setOWNER_ADDRESS1(String OWNER_ADDRESS1) {
		this.OWNER_ADDRESS1 = OWNER_ADDRESS1;
	}
	public void setOWNER_ADDRESS2(String OWNER_ADDRESS2) {
		this.OWNER_ADDRESS2 = OWNER_ADDRESS2;
	}
	public void setOWNER_TEL1(String OWNER_TEL1) {
		this.OWNER_TEL1 = OWNER_TEL1;
	}
	public void setOWNER_TEL2(String OWNER_TEL2) {
		this.OWNER_TEL2 = OWNER_TEL2;
	}
	public void setOWNER_TEL3(String OWNER_TEL3) {
		this.OWNER_TEL3 = OWNER_TEL3;
	}
	public void setOWNER_MOBILE1(String OWNER_MOBILE1) {
		this.OWNER_MOBILE1 = OWNER_MOBILE1;
	}
	public void setOWNER_MOBILE2(String OWNER_MOBILE2) {
		this.OWNER_MOBILE2 = OWNER_MOBILE2;
	}
	public void setOWNER_MOBILE3(String OWNER_MOBILE3) {
		this.OWNER_MOBILE3 = OWNER_MOBILE3;
	}
	public void setOWNER_MAIL(String OWNER_MAIL) {
		this.OWNER_MAIL = OWNER_MAIL;
	}
	public void setSTATUS(int STATUS) {
		this.STATUS = STATUS;
	}
	public void setREGIST_DATE(String REGIST_DATE) {
		this.REGIST_DATE = REGIST_DATE;
	}
	public void setUPDATE_DATE(String UPDATE_DATE) {
		this.UPDATE_DATE = UPDATE_DATE;
	}
	public void setUPDATE_USER_ID(int UPDATE_USER_ID) {
		this.UPDATE_USER_ID = UPDATE_USER_ID;
	}
	
	
	public int getID() {
		return ID;
	}
	public int getCUST_ID() {
		return CUST_ID;
	}
	public int getOWNER_KIND() {
		return OWNER_KIND;
	}
	public String getOWNER_CORP_NAME() {
		return OWNER_CORP_NAME;
	}
	public String getOWNER_CORP_NAME_KANA() {
		return OWNER_CORP_NAME_KANA;
	}
	public String getOWNER_DEPARTMENT_NAME() {
		return OWNER_DEPARTMENT_NAME;
	}
	public String getOWNER_L_NAME() {
		return OWNER_L_NAME;
	}
	public String getOWNER_F_NAME() {
		return OWNER_F_NAME;
	}
	public String getOWNER_L_NAME_KANA() {
		return OWNER_L_NAME_KANA;
	}
	public String getOWNER_F_NAME_KANA() {
		return OWNER_F_NAME_KANA;
	}
	public String getOWNER_ZIP() {
		return OWNER_ZIP;
	}
	public int getOWNER_PREFECTURE() {
		return OWNER_PREFECTURE;
	}
	public String getOWNER_ADDRESS1() {
		return OWNER_ADDRESS1;
	}
	public String getOWNER_ADDRESS2() {
		return OWNER_ADDRESS2;
	}
	public String getOWNER_TEL1() {
		return OWNER_TEL1;
	}
	public String getOWNER_TEL2() {
		return OWNER_TEL2;
	}
	public String getOWNER_TEL3() {
		return OWNER_TEL3;
	}
	public String getOWNER_MOBILE1() {
		return OWNER_MOBILE1;
	}
	public String getOWNER_MOBILE2() {
		return OWNER_MOBILE2;
	}
	public String getOWNER_MOBILE3() {
		return OWNER_MOBILE3;
	}
	public String getOWNER_MAIL() {
		return OWNER_MAIL;
	}
	public int getSTATUS () {
		return STATUS;
	}
	public String getREGIST_DATE() {
		return REGIST_DATE;
	}
	public String getUPDATE_DATE() {
		return UPDATE_DATE;
	}
	public int getUPDATE_USER_ID() {
		return UPDATE_USER_ID;
	
	}
}
