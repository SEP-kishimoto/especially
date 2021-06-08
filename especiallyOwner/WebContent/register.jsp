<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript"
	src="javascript/admin/common.js"></script>
<script type="text/javascript"
	src="javascript/admin/left_contents.js"></script>

<link rel="stylesheet" type="text/css" href="css/admin/owner.css">
<script type="text/javascript"
	src="javascript/admin/owner.js"></script>
<script type="text/javascript">
function changeRequired() {
    var index = $('#OWNER_KIND').val();
    if (String(index) == '2') {
        $('#OWNER_CORP_NAME').parent().parent().find('.start_required_w').removeClass('start_required_w').addClass('start_required');
        $('#OWNER_CORP_NAME_KANA').parent().parent().find('.start_required_w').removeClass('start_required_w').addClass('start_required');
    } else {
        $('#OWNER_CORP_NAME').parent().parent().find('.start_required').removeClass('start_required').addClass('start_required_w');
        $('#OWNER_CORP_NAME_KANA').parent().parent().find('.start_required').removeClass('start_required').addClass('start_required_w');
    }
}
function redirectToIndex() {
    window.location.href = '/admin/owner/';
}
// ready
$(function(){
    $('#OWNER_KIND').change(changeRequired);
    $('#btn_ichiran').click(redirectToIndex);
    changeRequired();
});
</script>
</head>
<body>
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
				<form action="comfirm.jsp" method="post" name="frm">
					<!-- enctype="multipart/form-data" -->
					<div class="center_condition">
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>顧客名
							</div>
							<div class="view_control">
								<select id="cbo_CUST_ID" name="CUST_ID"
									onchange="CUST_ID_change();" style="width: 204px">
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
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>個人・法人区分
							</div>
							<div class="view_control">
								<select id="OWNER_KIND" name="OWNER_KIND">
									<option></option>
									<option value="1">個人</option>
									<option value="2">法人</option>

								</select>
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required_w">&nbsp;&nbsp;&nbsp;</span>法人名
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_CORP_NAME" name="OWNER_CORP_NAME"
									value="" maxlength="50" style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角50文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required_w">&nbsp;&nbsp;&nbsp;</span>法人名カナ
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_CORP_NAME_KANA"
									name="OWNER_CORP_NAME_KANA" value="" maxlength="50"
									style="ime-mode: active" onchange="chgWideThis(this, CHG_KANA)"><br>(全角50文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required_w">&nbsp;&nbsp;&nbsp;</span>部署
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_DEPARTMENT_NAME"
									name="OWNER_DEPARTMENT_NAME" value="" maxlength="25"
									style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角25文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>姓
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_L_NAME" name="OWNER_L_NAME"
									value="" maxlength="10" style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角10文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>名
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_F_NAME" name="OWNER_F_NAME"
									value="" maxlength="10" style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角10文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>姓カナ
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_L_NAME_KANA"
									name="OWNER_L_NAME_KANA" value="" maxlength="10"
									style="ime-mode: active" onchange="chgWideThis(this, CHG_KANA)"><br>(全角10文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>名カナ
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_F_NAME_KANA"
									name="OWNER_F_NAME_KANA" value="" maxlength="10"
									style="ime-mode: active" onchange="chgWideThis(this, CHG_KANA)"><br>(全角10文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>郵便番号
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_ZIP" name="OWNER_ZIP" value=""
									maxlength="7"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="ime-mode: disabled"><br>(半角7文字ハイフンなし)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>都道府県
							</div>
							<div class="view_control">
								<select id="OWNER_PREFECTURE" name="OWNER_PREFECTURE"
									onchange="PREFECTURE_change();">
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
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>住所
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_ADDRESS1" name="OWNER_ADDRESS1"
									value="" maxlength="50" style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角50文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required_w">&nbsp;&nbsp;&nbsp;</span>建物名
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_ADDRESS2" name="OWNER_ADDRESS2"
									value="" maxlength="25" style="ime-mode: active"
									onchange="chgWideThis(this, NO_CHG_KANA)"><br>(全角25文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>電話番号
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_TEL1" name="OWNER_TEL1" value=""
									maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled">&nbsp;-&nbsp; <input
									type="text" id="OWNER_TEL2" name="OWNER_TEL2" value=""
									maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled">&nbsp;-&nbsp; <input
									type="text" id="OWNER_TEL3" name="OWNER_TEL3" value=""
									maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled"><br>(各半角4文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required_w">&nbsp;&nbsp;&nbsp;</span>携帯番号
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_MOBILE1" name="OWNER_MOBILE1"
									value="" maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled">&nbsp;-&nbsp; <input
									type="text" id="OWNER_MOBILE2" name="OWNER_MOBILE2" value=""
									maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled">&nbsp;-&nbsp; <input
									type="text" id="OWNER_MOBILE3" name="OWNER_MOBILE3" value=""
									maxlength="4"
									onkeydown="return numOnly(event.keyCode, COMMA_FALSE, MINUS_FALSE);"
									style="width: 40px; ime-mode: disabled"><br>(各半角4文字以内)
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">
								<span class="start_required">＊</span>メールアドレス
							</div>
							<div class="view_control">
								<input type="text" id="OWNER_MAIL" name="OWNER_MAIL" value=""
									maxlength="50" style="ime-mode: disabled"><br>(半角50文字以内)
							</div>
						</div>
						<input type="hidden" id="STATUS" name="STATUS" value="1">
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">&nbsp;</div>
							<div>
								<input type="submit" id="btn_henkou" name="btn_henkou"
									value="確認">&nbsp;&nbsp; <input type="button"
									id="btn_ichiran" name="btn_ichiran" value="一覧へ戻る"
									onclick="history.back();">
							</div>
						</div>
					</div>
					<input type="hidden" id="UPDATE_USER_ID" name="UPDATE_USER_ID"
						value="4">
				</form>
			</div>
			<!-- End Right content -->
		</div>
	</div>


</body>
</html>