var NO_CHG_KANA = 0;
var CHG_KANA = 1;
var COMMA_TRUE = true;
var COMMA_FALSE = false;
var MINUS_TRUE = true;
var MINUS_FALSE = false;

// カナ変換用文字列(変換前)
var beforeStr = new Array('ｧ','ｨ','ｩ','ｪ','ｫ','ｬ','ｭ','ｮ','ｯ','ｰ','ｳﾞ','ｶﾞ','ｷﾞ','ｸﾞ','ｹﾞ','ｺﾞ','ｻﾞ','ｼﾞ','ｽﾞ','ｾﾞ','ｿﾞ','ﾀﾞ','ﾁﾞ','ﾂﾞ','ﾃﾞ','ﾄﾞ','ﾊﾞ','ﾋﾞ','ﾌﾞ','ﾍﾞ','ﾎﾞ','ﾊﾟ','ﾋﾟ','ﾌﾟ','ﾍﾟ','ﾎﾟ','ｱ','ｲ','ｳ','ｴ','ｵ','ｶ','ｷ','ｸ','ｹ','ｺ','ｻ','ｼ','ｽ','ｾ','ｿ','ﾀ','ﾁ','ﾂ','ﾃ','ﾄ','ﾅ','ﾆ','ﾇ','ﾈ','ﾉ','ﾊ','ﾋ','ﾌ','ﾍ','ﾎ','ﾏ','ﾐ','ﾑ','ﾒ','ﾓ','ﾔ','ﾕ','ﾖ','ﾗ','ﾘ','ﾙ','ﾚ','ﾛ','ﾜ','ｦ','ﾝ');
// カナ変換用文字列(変換後)
var afterStr = new Array('ァ','ィ','ゥ','ェ','ォ','ャ','ュ','ョ','ッ','ー','ヴ','ガ','ギ','グ','ゲ','ゴ','ザ','ジ','ズ','ゼ','ゾ','ダ','ヂ','ヅ','デ','ド','バ','ビ','ブ','ベ','ボ','パ','ピ','プ','ペ','ポ','ア','イ','ウ','エ','オ','カ','キ','ク','ケ','コ','サ','シ','ス','セ','ソ','タ','チ','ツ','テ','ト','ナ','ニ','ヌ','ネ','ノ','ハ','ヒ','フ','ヘ','ホ','マ','ミ','ム','メ','モ','ヤ','ユ','ヨ','ラ','リ','ル','レ','ロ','ワ','ヲ','ン');

//全角が含まれている場合、入力を無効にする
function zenkakuExistsChk(obj){
    if (!obj.value.match(/^[\x20-\x7E]+$/)) {
        obj.value="";
    }
}
//半角カナ→全角カナ変換
function convertStr(str) {
    for(var i = 0; i < beforeStr.length; i++) {
        str = str.replace(new RegExp(beforeStr[i], 'g'), afterStr[i]);
    }
    return str;
}

//半角→全角変換関数(パラメータ＝「this」)(各画面(変更・更新のある文字フィールド)
function chgWideThis(obj, chgflg){
    obj.value= chgWide(obj.value, chgflg);
}
//半角→全角変換関数(パラメータ＝「string」)(各画面(変更・更新のある文字フィールド)
function chgWide(str, flg){
     str = $.trim(str).replace( /[A-Za-z0-9-!"#$%&'()=<>,.?_\[\]{}@^~\\]/g,
    function(s) {
        return String.fromCharCode(s.charCodeAt(0) + 65248);
    });
    //ひらがなをカタカナに変換
    if(flg == CHG_KANA){
        str = str.replace(/[\u3041-\u3096]/g, function(match) {
        		var chr = match.charCodeAt(0) + 0x60;
        		return String.fromCharCode(chr);
        });
    }

    //半角カナを全角カナへ変換
    return convertStr(str);
}
//数値のみ可能にする
function numOnly(e, periodFlg, minusFlg) {
//8:バックスペース
//9:Tab
//13:Enter
//16:Shift
//37～40:方向キー
//46:Delete
//48～57:数字
//96～105:数字(テンキー)
//109:-(テンキー)
//110:ピリオド(テンキー)
//173:-
//190:ピリオド
if(e==8 || e==9 || e==13 || e==16 ||(e >= 37 && e<= 40)|| e== 46 || (e >= 48 && e<= 57)||
    (e >= 96 && e<= 105) || (minusFlg && e == 109) || (periodFlg && e == 110) || (minusFlg && e == 173) || (periodFlg && e == 190)){
         return true;
    }else{
        return false;
    }
}
function noContextMenu(e){
return false;
}
document.oncontextmenu = noContextMenu;