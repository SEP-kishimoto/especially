<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="servlet.*" import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ja">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>オーナー管理</title>
<meta name="Description" content="">
<meta name="Keywords" content="">
<meta http-equiv="Content-Style-Type" content="text/css">
<link rel="stylesheet" type="text/css" href="css/admin/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" language="javascript"
	src="javascript/admin/common.js"></script>
<script type="text/javascript" language="javascript"
	src="javascript/admin/left_contents.js"></script>

<link rel="stylesheet" type="text/css" href="css/admin/owner.css">
<script type="text/javascript" language="javascript"
	src="javascript/admin/owner.js"></script>
</head>
<body>
<%
List<HashMap<String, String>> ownerList = new ArrayList<HashMap<String, String>>();
ownerList = common.ownerDataList(request);
%>
	<div class="logo"></div>
	<div id="wrapper">
		<div id="container">
			<div class="clear"></div>
			<div id="left_content">
				<a href="/admin/index">TOP</a>&nbsp;|&nbsp;<a
					href="/admin/login/logout">ログアウト</a> <br>
				<br>
				<div class="menu_group">■業務関連</div>
				<div class="menu_item">
					<a href="/admin/case">案件管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/estimate">見積管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/orders">受注管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/arrangement">発注管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/claim">請求管理</a>
				</div>
				<div class="menu_group">■物件関連</div>
				<div class="menu_item">
					<a href="/admin/floorplanname">物件間取り名称管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/floor">物件管理</a>
				</div>
				<div class="menu_group">■工程表</div>
				<div class="menu_item">
					<a href="/admin/processsheet">月別工程表出力</a>
				</div>
				<div class="menu_group">■工事区分関連</div>
				<div class="menu_item">
					<a href="/admin/costgroup">工事区分分類管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/cost">工事区分管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/maker">資材メーカー管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/trader">業者・仕入先管理</a>
				</div>
				<div class="menu_group">■チェックリスト関連</div>
				<div class="menu_item">
					<a href="/admin/check">チェック項目管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/checkgroupadd">チェック項目グループ登録・変更</a>
				</div>
				<div class="menu_item">
					<a href="/admin/checkcostcollabo">チェック項目工事区分管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/checkgroup">チェック項目グループ管理</a>
				</div>
				<div class="menu_group">■マスタ関連</div>
				<div class="menu_item">
					<a href="/admin/user">ユーザ管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/auth">権限管理</a>
				</div>
				<div class="menu_item">
					<a href="/admin/client">顧客管理</a>
				</div>
				<div class="menu_item">オーナー管理</div>
			</div>
			<!-- end left_content -->

			<!-- Start Right content -->
			<div id="right_content">
				<div id="condition" style="width: 1200px;">
					<form id="frm" name="frm" method="post">
						<div class="left_condition">
							<div class="condition_item">
								<div class="condition_title">個人・法人区分</div>
								<select tabindex="1" id="SEARCH_OWNER_KIND"
									name="SEARCH_OWNER_KIND">
									<option></option>
									<option value="1">個人</option>
									<option value="2">法人</option>

								</select>
							</div>
							<div class="condition_item">
								<div class="condition_title">法人名カナ</div>
								<div class="condition_control">
									<input tabindex="4" type="text"
										id="SEARCH_OWNER_CORP_NAME_KANA"
										name="SEARCH_OWNER_CORP_NAME_KANA" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">郵便番号</div>
								<div class="condition_control">
									<input tabindex="7" type="text" id="SEARCH_OWNER_ZIP"
										name="SEARCH_OWNER_ZIP" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">建物名</div>
								<div class="condition_control">
									<input tabindex="10" type="text" id="SEARCH_OWNER_ADDRESS2"
										name="SEARCH_OWNER_ADDRESS2" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">メールアドレス</div>
								<div class="condition_control">
									<input tabindex="13" type="text" id="SEARCH_OWNER_MAIL"
										name="SEARCH_OWNER_MAIL" value="">
								</div>
							</div>
						</div>
						<div class="center_condition">
							<div class="condition_item">
								<div class="condition_title">顧客名</div>
								<select tabindex="2" id="SEARCH_CLIENT" name="SEARCH_CLIENT"
									style="width: 204px">
									<option></option>
									<option value="1">トーセイ・コミュニティ株式会社</option>
									<option value="2">粟竹 諒</option>
									<option value="3">池永 健太</option>
									<option value="4">大平 茂照</option>
									<option value="5">有限会社アミティー</option>
									<option value="6">イオンディライト株式会社</option>
									<option value="7">有限会社FMコーポレーション</option>
									<option value="8">有限会社エル・イーコミュニケーション</option>
									<option value="9">株式会社エル・エス管財</option>
									<option value="10">株式会社オールグリーン</option>
									<option value="11">株式会社小田急ビルサービス</option>
									<option value="12">株式会社小田急ビルサービス</option>
									<option value="13">株式会社小田急ビルサービス</option>
									<option value="14">株式会社ケーズリード</option>
									<option value="15">株式会社ＫＭコーポレーション（ＫＭプランニング）</option>
									<option value="16">株式会社Ｇａｉｎ Ｍ</option>
									<option value="17">株式会社Ｋｅｌｌｙ ｂｕｃｋｓ</option>
									<option value="18">株式会社コーケンキャピタル</option>
									<option value="19">株式会社ゴールデンロータス</option>
									<option value="20">小泉 洋二朗</option>
									<option value="21">株式会社コンフィット</option>
									<option value="22">三通商事株式会社</option>
									<option value="23">医療法人財団 聖蹟会</option>
									<option value="24">サンフロンティア不動産 株式会社</option>
									<option value="25">シュアラスターホールディングス株式会社</option>
									<option value="26">総合建物株式会社</option>
									<option value="27">総合建物株式会社</option>
									<option value="28">総合ハウジングサービス株式会社</option>
									<option value="29">大東株式会社</option>
									<option value="30">大和ライフネクスト株式会社</option>
									<option value="31">有限会社タクサン</option>
									<option value="32">ＴＣプロパティーソリューションズ株式会社</option>
									<option value="33">東急住宅リース株式会社</option>
									<option value="34">東京シティリアルエステート株式会社</option>
									<option value="35">東京美装興業株式会社</option>
									<option value="36">有限会社東洋商事</option>
									<option value="37">トルコ共和国大使館</option>
									<option value="38">株式会社ハウスメイトパートナーズ</option>
									<option value="39">株式会社ハウスメイトワークス 世田谷ベース</option>
									<option value="40">株式会社ハウスメイトワークス 船橋ベース</option>
									<option value="41">株式会社ハウスメイトワークス 三郷ベース</option>
									<option value="42">パシフィック・アセット・マネジメント株式会社</option>
									<option value="43">パシフィック・ディベロップメント・アンド・マネージメント株式会社</option>
									<option value="44">株式会社 長谷工ライブネット</option>
									<option value="45">原田 實（Ａ Ｃｉｎｅｍａ美容院）</option>
									<option value="46">ビーエルディーコーポレイション</option>
									<option value="47">ヒューマンライフ株式会社</option>
									<option value="48">株式会社ファーストスター</option>
									<option value="49">ファシリティーパートナーズ株式会社</option>
									<option value="50">福田 元裕</option>
									<option value="51">株式会社 前田</option>
									<option value="52">増茂 慎太郎</option>
									<option value="53">ミツワ総合地所株式会社</option>
									<option value="54">八百金</option>
									<option value="55">ユナイテッド不動産株式会社</option>
									<option value="56">ユニオン・シティサービス株式会社 東京中央支店</option>
									<option value="57">ユニオン・シティサービス株式会社 東京北支店</option>
									<option value="58">株式会社代々木の杜企画</option>
									<option value="59">株式会社ライフ・サイエンス研究所</option>
									<option value="60">株式会社ランドエスパース</option>
									<option value="61">株式会社リアルランド</option>
									<option value="62">株式会社リブラスト</option>
									<option value="63">株式会社ルーフ</option>
									<option value="64">株式会社レガロキャピタル</option>
									<option value="65">渡邉設備株式会社</option>
									<option value="66">株式会社Ｋｅｌｌｙ ｂｕｃｋｓ</option>
									<option value="67">バイオシステム株式会社</option>
									<option value="68">テスト姓 テスト名</option>
									<option value="69">株式会社エスペシャリィ</option>
									<option value="70">あいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえおあいうえお</option>

								</select>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">オーナー名</div>
								<div class="condition_control">
									<input tabindex="5" type="text" id="SEARCH_OWNER_NAME"
										name="SEARCH_OWNER_NAME" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">都道府県</div>
								<div class="condition_control">
									<select tabindex="8" id="SEARCH_PREFECTURE"
										name="SEARCH_PREFECTURE">
										<option></option>
										<option value="1">北海道</option>
										<option value="2">青森県</option>
										<option value="3">岩手県</option>
										<option value="4">宮城県</option>
										<option value="5">秋田県</option>
										<option value="6">山形県</option>
										<option value="7">福島県</option>
										<option value="8">茨城県</option>
										<option value="9">栃木県</option>
										<option value="10">群馬県</option>
										<option value="11">埼玉県</option>
										<option value="12">千葉県</option>
										<option value="13">東京都</option>
										<option value="14">神奈川県</option>
										<option value="15">新潟県</option>
										<option value="16">富山県</option>
										<option value="17">石川県</option>
										<option value="18">福井県</option>
										<option value="19">山梨県</option>
										<option value="20">長野県</option>
										<option value="21">岐阜県</option>
										<option value="22">静岡県</option>
										<option value="23">愛知県</option>
										<option value="24">三重県</option>
										<option value="25">滋賀県</option>
										<option value="26">京都府</option>
										<option value="27">大阪府</option>
										<option value="28">兵庫県</option>
										<option value="29">奈良県</option>
										<option value="30">和歌山県</option>
										<option value="31">鳥取県</option>
										<option value="32">島根県</option>
										<option value="33">岡山県</option>
										<option value="34">広島県</option>
										<option value="35">山口県</option>
										<option value="36">徳島県</option>
										<option value="37">香川県</option>
										<option value="38">愛媛県</option>
										<option value="39">高知県</option>
										<option value="40">福岡県</option>
										<option value="41">佐賀県</option>
										<option value="42">長崎県</option>
										<option value="43">熊本県</option>
										<option value="44">大分県</option>
										<option value="45">宮崎県</option>
										<option value="46">鹿児島県</option>
										<option value="47">沖縄県</option>

									</select>
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">電話番号</div>
								<div class="condition_control">
									<input tabindex="11" type="text" id="SEARCH_OWNER_TEL"
										name="SEARCH_OWNER_TEL" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">ステータス</div>
								<select tabindex="14" id="SEARCH_STATUS" name="SEARCH_STATUS">
									<option value="1">有効</option>
									<option value="2">無効</option>

								</select>
							</div>




						</div>
						<div class="right_condition">
							<div class="condition_item">
								<div class="condition_title">法人名</div>
								<div class="condition_control">
									<input tabindex="3" type="text" id="SEARCH_OWNER_CORP_NAME"
										name="SEARCH_OWNER_CORP_NAME" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">オーナー名カナ</div>
								<div class="condition_control">
									<input tabindex="6" type="text" id="SEARCH_OWNER_NAME_KANA"
										name="SEARCH_OWNER_NAME_KANA" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">住所</div>
								<div class="condition_control">
									<input tabindex="9" type="text" id="SEARCH_OWNER_ADDRESS1"
										name="SEARCH_OWNER_ADDRESS1" value="">
								</div>
							</div>
							<div class="clear"></div>
							<div class="condition_item">
								<div class="condition_title">携帯番号</div>
								<div class="condition_control">
									<input tabindex="12" type="text" id="SEARCH_OWNER_MOBILE"
										name="SEARCH_OWNER_MOBILE" value="">
								</div>
							</div>
						</div>


						<div class="clear"></div>
						<div class="cbo_date">
							<select tabindex="14" id="YEAR_FROM" name="YEAR_FROM">
								<option></option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>

							</select> / <select tabindex="15" id="MONTH_FROM" name="MONTH_FROM">
								<option></option>
								<%for (int i = 1; i < 13; i++) {%>
								<option value="<%=i%>"><%=i%></option>
								<%} %>
							</select> / <select tabindex="16" id="DAY_FROM" name="DAY_FROM">
								<option></option>
								<%for (int i = 1; i < 32; i++) {%>
								<option value="<%=i%>"><%=i%></option>
								<%} %>
							</select> ～ <select tabindex="17" id="YEAR_TO" name="YEAR_TO">
								<option></option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>

							</select> / <select tabindex="18" id="MONTH_TO" name="MONTH_TO">
								<option></option>
								<%for (int i = 1; i < 13; i++) {%>
								<option value="<%=i%>"><%=i%></option>
								<%} %>

							</select> / <select tabindex="19" id="DAY_TO" name="DAY_TO">
								<option></option>
								<%for (int i = 1; i < 32; i++) {%>
								<option value="<%=i%>"><%=i%></option>
								<%} %>

							</select> <select tabindex="20" id="date_register" name="date_register">
								<option value="1" selected="selected">登録日</option>
								<option value="2">更新日</option>

							</select> <br>
							<div class="error_date">
								<div class="class_error_date_from" id="error_date_from"
									style="display: none;">※「日付」が不正です。</div>
								<div class="class_error_date_to" id="error_date_to"
									style="display: none;">※「日付」が不正です。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="btn_search">
							<input tabindex="21" type="button" value="検索"
								onclick="btn_search_owner();"> <input tabindex="22"
								type="reset" value="リセット">
						</div>
						<input type="hidden" id="loginId" name="loginId" value="4">
						<input type="hidden" id="page" name="page" value="0">
					</form>

				</div>
				<div class="line_dot">
					<input tabindex="23" type="button" value="新規登録"
						onclick="btn_tsuika_click();">
				</div>
				<br>
				<!-- Page list -->
				<div class="page_list">
					<b>[1]</b>&nbsp;
				</div>

				<!-- End Page list -->
				<table class="rounded-corner">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">ステータス</th>
							<th scope="col">顧客名</th>
							<th scope="col">オーナー名<br> オーナー名カナ
							</th>
							<th scope="col">法人名<br> 法人名カナ
							</th>
							<th scope="col">郵便番号<br> 住所<br> 建物名
							</th>
							<th scope="col">メールアドレス<br>
							</th>
							<th scope="col">電話番号<br> 携帯番号
							</th>
							<th scope="col">登録日<br> 更新日
							</th>
						</tr>
					</thead>
					<tbody>
						<%for (int i = 0; i < ownerList.size(); i++) {%>
						<tr id="tbl_row_<%=i + 1 %>">
						<td><input type="button" value="変更"
								onclick="btn_henkou_click(1);"></td>
							<td align="center">
								<select id="status1" name="status1">
								<%if (Integer.parseInt(ownerList.get(i).get("STATUS")) == 1) {%>
									<option value="1" selected="selected">有効</option>
									<option value="2">無効</option>
								<%} else if (Integer.parseInt(ownerList.get(i).get("STATUS")) == 2) {%>
									<option value="1">有効</option>
									<option value="2" selected="selected">無効</option>
								<%} %>
								</select><br>
							<input type="button" value="実行" onclick="update_status(1);">
							</td>
							<td>テスト姓 テスト名</td>
							<td>
								<%=ownerList.get(i).get("OWNER_L_NAME") %> <%=ownerList.get(i).get("OWNER_F_NAME") %><br>
								<%=ownerList.get(i).get("OWNER_L_NAME_KANA") %> <%=ownerList.get(i).get("OWNER_F_NAME_KANA") %>
							</td>
							<td>
								<%=ownerList.get(i).get("OWNER_CORP_NAME") %> <br>
								<%=ownerList.get(i).get("OWNER_CORP_NAME_KANA") %>
							</td>
							<td>
								<%=ownerList.get(i).get("OWNER_ZIP").substring(0, 3) %>-<%=ownerList.get(i).get("OWNER_ZIP").substring(3, 7) %><br>
								<%=ownerList.get(i).get("OWNER_ADDRESS1") %><br>
								<%=ownerList.get(i).get("OWNER_ADDRESS2") %>
							</td>
							<td><%=ownerList.get(i).get("OWNER_MAIL") %></td>
							<td>
								<%=ownerList.get(i).get("OWNER_TEL1") %>-<%=ownerList.get(i).get("OWNER_TEL2") %>-<%=ownerList.get(i).get("OWNER_TEL3") %><br>
								<%=ownerList.get(i).get("OWNER_MOBILE1") %>-<%=ownerList.get(i).get("OWNER_MOBILE2") %>-<%=ownerList.get(i).get("OWNER_MOBILE3") %>
							</td>
							<td>
								<%=ownerList.get(i).get("REGIST_DATE").replaceAll("-", "/") %><br>
								<%=ownerList.get(i).get("UPDATE_DATE").replaceAll("-", "/") %>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
				<br>
				<!-- Page list -->
				<div class="page_list">
					<b>[1]</b>&nbsp;
				</div>

				<!-- End Page list -->
			</div>
			<div class="clear"></div>
			<input type="hidden" id="hd_row_status" name="hd_row_status" value="">
			<input type="hidden" id="hd_row_id" name="hd_row_id" value="">
			<input type="hidden" id="page" name="page" value="0">

			<form id="frm_cond" name="frm_cond" method="post">
				<!-- Search List Param -->
				<input type="hidden" id="SEARCH_OWNER_KIND" name="SEARCH_OWNER_KIND"
					value=""> <input type="hidden"
					id="SEARCH_OWNER_CORP_NAME_KANA" name="SEARCH_OWNER_CORP_NAME_KANA"
					value=""> <input type="hidden" id="SEARCH_OWNER_ZIP"
					name="SEARCH_OWNER_ZIP" value=""> <input type="hidden"
					id="SEARCH_OWNER_ADDRESS2" name="SEARCH_OWNER_ADDRESS2" value="">
				<input type="hidden" id="SEARCH_OWNER_MAIL" name="SEARCH_OWNER_MAIL"
					value=""> <input type="hidden" id="SEARCH_CLIENT"
					name="SEARCH_CLIENT" value=""> <input type="hidden"
					id="SEARCH_OWNER_NAME" name="SEARCH_OWNER_NAME" value=""> <input
					type="hidden" id="SEARCH_PREFECTURE" name="SEARCH_PREFECTURE"
					value=""> <input type="hidden" id="SEARCH_OWNER_TEL"
					name="SEARCH_OWNER_TEL" value=""> <input type="hidden"
					id="SEARCH_STATUS" name="SEARCH_STATUS" value=""> <input
					type="hidden" id="SEARCH_OWNER_CORP_NAME"
					name="SEARCH_OWNER_CORP_NAME" value=""> <input
					type="hidden" id="SEARCH_OWNER_NAME_KANA"
					name="SEARCH_OWNER_NAME_KANA" value=""> <input
					type="hidden" id="SEARCH_OWNER_ADDRESS1"
					name="SEARCH_OWNER_ADDRESS1" value=""> <input type="hidden"
					id="YEAR_FROM" name="YEAR_FROM" value=""> <input
					type="hidden" id="MONTH_FROM" name="MONTH_FROM" value=""> <input
					type="hidden" id="DAY_FROM" name="DAY_FROM" value=""> <input
					type="hidden" id="YEAR_TO" name="YEAR_TO" value=""> <input
					type="hidden" id="MONTH_TO" name="MONTH_TO" value=""> <input
					type="hidden" id="DAY_TO" name="DAY_TO" value=""> <input
					type="hidden" id="date_register" name="date_register" value="1">
				<!-- Search List Param -->
			</form>
			<!-- End Right content -->
		</div>
	</div>

</body>
</html>