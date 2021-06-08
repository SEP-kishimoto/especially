<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ja" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>オーナー管理</title>
<meta name="Description" content="" />
<meta name="Keywords" content="" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" type="text/css" href="css/admin/common.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" language="javascript"
	src="javascript/admin/common.js"></script>
<script type="text/javascript" language="javascript"
	src="javascript/admin/left_contents.js"></script>

<link rel="stylesheet" type="text/css" href="css/admin/owner.css" />
<script type="text/javascript" language="javascript"
	src="javascript/admin/owmer.js"></script>
<script type="text/javascript" language="javascript">
$(function(){
    $('#btn_henkou').focus();
});
</script>
</head>
<body>
<!-- 値の受け取り -->
<%
request.setCharacterEncoding("UTF-8");
String OWNER_KIND = request.getParameter("OWNER_KIND");
String OWNER_CORP_NAME = request.getParameter("OWNER_CORP_NAME");
String OWNER_CORP_NAME_KANA = request.getParameter("OWNER_CORP_NAME_KANA");
String OWNER_DEPARTMENT_NAME = request.getParameter("OWNER_DEPARTMENT_NAME");
String OWNER_L_NAME = request.getParameter("OWNER_L_NAME");
String OWNER_F_NAME = request.getParameter("OWNER_F_NAME");
String OWNER_L_NAME_KANA = request.getParameter("OWNER_L_NAME_KANA");
String OWNER_F_NAME_KANA = request.getParameter("OWNER_F_NAME_KANA");
String OWNER_ZIP = request.getParameter("OWNER_ZIP");
String OWNER_PREFECTURE = request.getParameter("OWNER_PREFECTURE");
String OWNER_ADDRESS1 = request.getParameter("OWNER_ADDRESS1");
String OWNER_ADDRESS2 = request.getParameter("OWNER_ADDRESS2");
String OWNER_TEL1 = request.getParameter("OWNER_TEL1");
String OWNER_TEL2 = request.getParameter("OWNER_TEL2");
String OWNER_TEL3 = request.getParameter("OWNER_TEL3");
String OWNER_MOBILE1 = request.getParameter("OWNER_MOBILE1");
String OWNER_MOBILE2 = request.getParameter("OWNER_MOBILE2");
String OWNER_MOBILE3 = request.getParameter("OWNER_MOBILE3");
String OWNER_MAIL = request.getParameter("OWNER_MAIL");
String STATUS = request.getParameter("STATUS");
System.out.print(STATUS);

%>
	<div class="logo"></div>
	<div id="wrapper">
		<div id="container">
			<div class="clear"></div>
			<div id='left_content'>
				<a href='/admin/index'>TOP</a>&nbsp;|&nbsp;<a
					href='/admin/login/logout'>ログアウト</a> <br />
				<br />
				<div class='menu_group'>■業務関連</div>
				<div class='menu_item'>
					<a href='/admin/case'>案件管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/estimate'>見積管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/orders'>受注管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/arrangement'>発注管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/claim'>請求管理</a>
				</div>
				<div class='menu_group'>■物件関連</div>
				<div class='menu_item'>
					<a href='/admin/floorplanname'>物件間取り名称管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/floor'>物件管理</a>
				</div>
				<div class='menu_group'>■工程表</div>
				<div class='menu_item'>
					<a href='/admin/processsheet'>月別工程表出力</a>
				</div>
				<div class='menu_group'>■工事区分関連</div>
				<div class='menu_item'>
					<a href='/admin/costgroup'>工事区分分類管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/cost'>工事区分管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/maker'>資材メーカー管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/trader'>業者・仕入先管理</a>
				</div>
				<div class='menu_group'>■チェックリスト関連</div>
				<div class='menu_item'>
					<a href='/admin/check'>チェック項目管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/checkgroupadd'>チェック項目グループ登録・変更</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/checkcostcollabo'>チェック項目工事区分管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/checkgroup'>チェック項目グループ管理</a>
				</div>
				<div class='menu_group'>■マスタ関連</div>
				<div class='menu_item'>
					<a href='/admin/user'>ユーザ管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/auth'>権限管理</a>
				</div>
				<div class='menu_item'>
					<a href='/admin/client'>顧客管理</a>
				</div>
				<div class='menu_item'>オーナー管理</div>
			</div>
			<!-- end left_content -->

			<!-- Start Right content -->
			<div id="right_content">
				<form action="comfirmBL" method="post" name="frm">
					<div>
						<div class="view_item">
							<div class="view_title">顧客名</div>
							<div class="view_control"><%=request.getParameter("CUST_ID") %><input type="hidden" id="CUST_ID" name="CUST_ID" value="<%=request.getParameter("CUST_ID")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">個人・法人区分</div>
							<div class="view_control"><%=request.getParameter("OWNER_KIND")%><input type="hidden" id="OWNER_KIND" name="OWNER_KIND" value="<%=request.getParameter("OWNER_KIND")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">法人名</div>
							<div class="view_control"><%=request.getParameter("OWNER_CORP_NAME")%><input type="hidden" id="OWNER_CORP_NAME" name="OWNER_CORP_NAME" value="<%=request.getParameter("OWNER_CORP_NAME")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">法人名カナ</div>
							<div class="view_control"><%=request.getParameter("OWNER_CORP_NAME_KANA")%><input type="hidden" id="OWNER_CORP_NAME_KANA" name="OWNER_CORP_NAME_KANA" value="<%=request.getParameter("OWNER_CORP_NAME_KANA")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">部署</div>
							<div class="view_control"><%=request.getParameter("OWNER_DEPARTMENT_NAME")%><input type="hidden" id="OWNER_DEPARTMENT_NAME" name="OWNER_DEPARTMENT_NAME" value="<%=request.getParameter("OWNER_DEPARTMENT_NAME")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">姓</div>
							<div class="view_control"><%=request.getParameter("OWNER_L_NAME")%><input type="hidden" id="OWNER_L_NAME" name="OWNER_L_NAME" value="<%=request.getParameter("OWNER_L_NAME")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">名</div>
							<div class="view_control"><%=request.getParameter("OWNER_F_NAME")%><input type="hidden" id="OWNER_F_NAME" name="OWNER_F_NAME" value="<%=request.getParameter("OWNER_F_NAME")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">姓カナ</div>
							<div class="view_control"><%=request.getParameter("OWNER_L_NAME_KANA")%><input type="hidden" id="OWNER_L_NAME_KANA" name="OWNER_L_NAME_KANA" value="<%=request.getParameter("OWNER_L_NAME_KANA")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">名カナ</div>
							<div class="view_control"><%=request.getParameter("OWNER_F_NAME_KANA")%><input type="hidden" id="OWNER_F_NAME_KANA" name="OWNER_F_NAME_KANA" value="<%=request.getParameter("OWNER_F_NAME_KANA")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">郵便番号</div>
							<div class="view_control"><%=request.getParameter("OWNER_ZIP")%><input type="hidden" id="OWNER_ZIP" name="OWNER_ZIP" value="<%=request.getParameter("OWNER_ZIP")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">都道府県</div>
							<div class="view_control"><%=request.getParameter("OWNER_PREFECTURE")%><input type="hidden" id="OWNER_PREFECTURE" name="OWNER_PREFECTURE" value="<%=request.getParameter("OWNER_PREFECTURE")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">住所</div>
							<div class="view_control"><%=request.getParameter("OWNER_ADDRESS1")%><input type="hidden" id="OWNER_ADDRESS1" name="OWNER_ADDRESS1" value="<%=request.getParameter("OWNER_ADDRESS1")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">建物名</div>
							<div class="view_control"><%=request.getParameter("OWNER_ADDRESS2")%><input type="hidden" id="OWNER_ADDRESS2" name="OWNER_ADDRESS2" value="<%=request.getParameter("OWNER_ADDRESS2")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">電話番号</div>
							<div class="view_control">
							<%=request.getParameter("OWNER_TEL1")%><input type="hidden" id="OWNER_TEL1" name="OWNER_TEL1" value="<%=request.getParameter("OWNER_TEL1")%>">
							<%=request.getParameter("OWNER_TEL2") %><input type="hidden" id="OWNER_TEL2" name="OWNER_TEL2" value="<%=request.getParameter("OWNER_TEL2") %>">
							<%=request.getParameter("OWNER_TEL3") %><input type="hidden" id="OWNER_TEL3" name="OWNER_TEL3" value="<%=request.getParameter("OWNER_TEL3") %>">
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">携帯番号</div>
							<div class="view_control">
							<%=request.getParameter("OWNER_MOBILE1")%><input type="hidden" id="OWNER_MOBILE1" name="OWNER_MOBILE1" value="<%=request.getParameter("OWNER_MOBILE1")%>">
							<%=request.getParameter("OWNER_MOBILE2")%><input type="hidden" id="OWNER_MOBILE2" name="OWNER_MOBILE2" value="<%=request.getParameter("OWNER_MOBILE2")%>">
							<%=request.getParameter("OWNER_MOBILE3")%><input type="hidden" id="OWNER_MOBILE3" name="OWNER_MOBILE3" value="<%=request.getParameter("OWNER_MOBILE3")%>">
							</div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">メールアドレス</div>
							<div class="view_control"><%=request.getParameter("OWNER_MAIL")%><input type="hidden" id="OWNER_MAIL" name="OWNER_MAIL" value="<%=request.getParameter("OWNER_MAIL")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_control"><%=request.getParameter("STATUS")%><input type="hidden" id="STATUS" name="STATUS" value="<%=request.getParameter("STATUS")%>"></div>
						</div>
						<div class="clear"></div>
						<div class="view_item">
							<div class="view_title">&nbsp;</div>
							<div>
								<input type="submit" id="btn_henkou" name="btn_henkou"
									value="登録">&nbsp;&nbsp; <input type="button"
									id="btn_ichiran" name="btn_ichiran" value="戻る"
									onClick="history.back();">
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- End Right content -->
		</div>
	</div>
</body>
</html>