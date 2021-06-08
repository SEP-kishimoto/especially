function btn_search_owner()
{
	if(!checkDateFromTo()){
		return;	
	}
	document.frm.page.value=0;
	document.frm.submit();
}
function btn_search_reset()
{
	document.getElementById("SEARCH_OWNER_KIND").value="";
	document.getElementById("SEARCH_OWNER_CORP_NAME_KANA").value="";
	document.getElementById("SEARCH_OWNER_ZIP").value="";
	document.getElementById("SEARCH_OWNER_ADDRESS2").value="";
	document.getElementById("SEARCH_OWNER_MAIL").value="";
	document.getElementById("SEARCH_CLIENT").value="";
	document.getElementById("SEARCH_OWNER_NAME").value="";
	document.getElementById("SEARCH_PREFECTURE").value="";
	document.getElementById("SEARCH_OWNER_TEL").value="";
	document.getElementById("SEARCH_STATUS").selectedIndex=0;
	document.getElementById("SEARCH_OWNER_CORP_NAME").value="";
	document.getElementById("SEARCH_OWNER_NAME_KANA").value="";
	document.getElementById("SEARCH_OWNER_ADDRESS1").value="";
	document.getElementById("SEARCH_OWNER_MOBILE").value="";

    document.getElementById("YEAR_FROM").selectedIndex="";
	document.getElementById("MONTH_FROM").selectedIndex="";
	document.getElementById("DAY_FROM").selectedIndex="";
	document.getElementById("YEAR_TO").selectedIndex="";
	document.getElementById("MONTH_TO").selectedIndex="";
	document.getElementById("DAY_TO").selectedIndex="";
	document.getElementById("date_register").selectedIndex=0;

}
function btn_update_submit(mb_id)
{
	document.frm_cond.action = "/admin/owner/load/?id=" + mb_id;
	document.frm_cond.submit();
}
function btn_page_num_submit(page)
{
	document.frm.action = "/admin/owner/?page=" + page;
	document.frm.submit();
}
function btn_update_status(mb_id)
{
	var status_val	=document.getElementById("status"+mb_id);	
	document.getElementById("hd_row_status").value	= status_val.value;
	document.getElementById("hd_row_id").value		= mb_id;
	document.frm.submit();
	
}
function btn_tsuika_click(){
	document.frm.action = "register.jsp";
	document.frm.submit();
}
function btn_henkou_click(id){
	document.frm.action = "/admin/owner/modify/?ID=" + String(id);
	document.frm.submit();
}
function btn_ichiran_click()
{	
	document.frm.action = "/admin/owner/list";
	document.frm.submit();
}
function PREFECTURE_change()
{
	document.frm.CODE_NAME.value = document.frm.OWNER_PREFECTURE.options[document.frm.OWNER_PREFECTURE.selectedIndex].text;
}
function btn_confirm_click(){
	document.frm.action = "/admin/owner/confirm";
	document.frm.submit();
}
function btn_back_click(){
	document.frm.action = "/admin/owner/back";
	document.frm.submit();
}
function checkDate(year, month, day){
    if (isNaN(month) || isNaN(day) || isNaN(year)) return false;
    if (month <= 0 || day <= 0 || year <= 0) return false;
    var dd = new Date(year, month - 1, day);
    if (year != dd.getFullYear() || month != dd.getMonth() + 1 || day != dd.getDate()) return false;
    return true;
}
function checkDateFromTo()
{
	var year,month,day;
	year	=document.getElementById("YEAR_FROM").value;
	month	=document.getElementById("MONTH_FROM").value;
	day		=document.getElementById("DAY_FROM").value;
	var is_check=true;
	if(year=="" && month=="" && day==""){
		document.getElementById("error_date_from").style.display = "none";
	}else{
		if(year!="" && month!="" && day!=""){
			if(!checkDate(year,month,day)){
				document.getElementById("error_date_from").style.display = "block";
				is_check=false;
			}else{
				document.getElementById("error_date_from").style.display = "none";
			}
		}else{
			document.getElementById("error_date_from").style.display  = "block";
			is_check=false;
		}
	}
	
	year	=document.getElementById("YEAR_TO").value;
	month	=document.getElementById("MONTH_TO").value;
	day		=document.getElementById("DAY_TO").value;
	
	if(year=="" && month=="" && day==""){
		document.getElementById("error_date_to").style.display = "none";
	}else{
		if(year!="" && month!="" && day!=""){
			if(!checkDate(year,month,day)){
				document.getElementById("error_date_to").style.display = "block";
				is_check=false;
			}else{
				document.getElementById("error_date_to").style.display = "none";
			}
		}else{
			document.getElementById("error_date_to").style.display	= "block";
			is_check=false;
		}
	}
	return is_check;
}

function update_status(id) {
    var confirmMessage = 'ステータスを [' +
            $('#status' + String(id) + ' option:selected').text() +
            '] に変更します。\nよろしいですか？';
    if (window.confirm(confirmMessage) == false) {
        return false;
    }
    $.ajax({
            url: "/admin/owner/modifystatus",
            type: 'POST',
            cache: false,
            //async: false,
            data: {
                ID: id,
                STATUS: $('#status' + String(id)).val(),
                UPDATE_USER_ID: $('#loginId').val(),
            },
            //statusCode: {
            //    404: function(){
            //        alert("Page not found.");
            //    }
            //},
    }).done(function(result) {
        alert('更新しました。');
        $('#frm').submit();
    }).fail(function(data, testStatus, jqXHR) {
        console.log(data, testStatus, jqXHR);
        alert(data);
//        alert('エラーが発生しました。');
    }).always(function(result) {
        //alert('always');
    });
}
