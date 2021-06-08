
var FROM_USER = 1;
var FROM_AUTH = 2;
var FROM_CLIENT = 3;
var FROM_OWNER = 4;
var FROM_CHECK_GROUP = 5;
var FROM_CHECK_GROUP_ADD = 6;
var FROM_CHECK = 7;
var FROM_COST_GROUP = 8;
var FROM_COST = 9;
var FROM_MAKER = 10;
var FROM_TRADER = 11;
var FROM_FLOOR_PLAN_NAME = 12;
var FROM_FLOOR = 13;
var FROM_CASE = 14;
var FROM_ESTIMATE = 15;
var FROM_ORDER = 16;
var FROM_ARRANGEMENT = 17;
var FROM_CLAIM = 18;

var FROM_COST_COLLABO = 19;
var FROM_PROCESS_SHEET = 20;



function left_contents(kind){
    document.write("<div id='left_content'>");
    document.write("<a href='/admin/top'>TOP</a> | ");
    document.write("<a href='/admin/login/logout'>ログアウト</a>");
    document.write("<br /><br />");

    document.write("<div class='menu_group'>■マスタ関連</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_USER){
    document.write("ユーザー管理");
}else{
    document.write("<a href='/admin/user/'>ユーザー管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_AUTH){
    document.write("権限管理");
}else{
    document.write("<a href='/admin/auth/'>権限管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_CLIENT){
    document.write("顧客管理");
}else{
    document.write("<a href='/admin/client/'>顧客管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_OWNER){
    document.write("オーナー管理");
}else{
    document.write("<a href='/admin/owner/'>オーナー管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_group'>■チェックリスト関連</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_CHECK_GROUP){
    document.write("チェック項目グループ管理");
}else{
    document.write("<a href='/admin/checkgroup/'>チェック項目グループ管理</a>");
}
    document.write("</div>");

    document.write("<div class='menu_item'>");
if(kind == FROM_CHECK_GROUP_ADD){
    document.write("チェック項目グループ登録・変更");
}else{
    document.write("<a href='/admin/checkgroupadd/'>チェック項目グループ登録・変更</a>");
}
    document.write("</div>");

    document.write("<div class='menu_item'>");



if(kind == FROM_COST_COLLABO){
    document.write("チェック項目工事区分設定管理");
}else{
    document.write("<a href='/admin/checkcostcollabo/'>チェック項目工事区分設定管理</a>");
}
    document.write("</div>");

    document.write("<div class='menu_item'>");
if(kind == FROM_CHECK){
    document.write("チェック項目管理");
}else{
    document.write("<a href='/admin/check/'>チェック項目管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_group'>■工事区分関連</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_COST_GROUP){
    document.write("工事区分分類管理");
}else{
    document.write("<a href='/admin/costgroup/'>工事区分分類管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_COST){
    document.write("工事区分管理");
}else{
    document.write("<a href='/admin/cost/'>工事区分管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_MAKER){
    document.write("資材メーカー管理");
}else{
    document.write("<a href='/admin/maker/'>資材メーカー管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_TRADER){
    document.write("業者・仕入先管理");
}else{
    document.write("<a href='/admin/trader/'>業者・仕入先管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_group'>■物件関連</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_FLOOR_PLAN_NAME){
    document.write("物件間取り名称管理");
}else{
    document.write("<a href='/admin/floorplanname/'>物件間取り名称管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_FLOOR){
    document.write("物件管理");
}else{
    document.write("<a href='/admin/floor/'>物件管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_group'>■業務関連</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_CASE){
    document.write("案件管理");
}else{
    document.write("<a href='/admin/case/'>案件管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_ESTIMATE){
    document.write("見積管理");
}else{
    document.write("<a href='/admin/estimate/'>見積管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_ORDER){
    document.write("受注管理");
}else{
    document.write("<a href='/admin/order/'>受注管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_ARRANGEMENT){
    document.write("発注管理");
}else{
    document.write("<a href='/admin/arrangement/'>発注管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_CLAIM){
    document.write("請求管理");
}else{
    document.write("<a href='/admin/claim/'>請求管理</a>");
}
    document.write("</div>");
    document.write("<div class='menu_group'>■工程表</div>");
    document.write("<div class='menu_item'>");
if(kind == FROM_PROCESS_SHEET){
    document.write("月別工程表出力");
}else{
    document.write("<a href='/admin/processsheet/'>月別工程表出力</a>");
}
    document.write("</div>");
    document.write("</div>");
}
