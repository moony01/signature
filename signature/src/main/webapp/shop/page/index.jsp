<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="format-detection" content="telephone=no" />
<meta property="og:type" content="website">
<meta property="og:title" content="서명 테스트 사이트">
<!-- <meta property="og:url" content="https://no-jap.org"> -->
<meta property="og:description" content="서명 테스트 사이트">
<meta property="og:image" content="http://no-jap.org/signature/assets/imgs/main-img.jpg">

<title>서명 사이트</title>

<!-- LIB -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="/signature/shop/css/common.css" />
<link rel="stylesheet" href="/signature/shop/css/style.css" />
</head>
<body>
<div id="all">

<div id="header">
    <div class="main_bg"><h1>텍스트텍스트텍스트텍스트<br>텍스트텍스트텍스트!</h1></div>
	<div class="patten"></div>
</div>
	
<jsp:include page="${display}" />
  			
<div id="footer">
<div class="copyright">
    <a class="onsite-logout">텍스트텍스트텍스트텍스트</a><br /> 텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트
</div>
</div>
  			
</div>
</body>
<script type="text/javascript">

$(document).ready(function() {
	let memId = '${memId}';
	let memNickName = '${memNickName}';
	let memEmail = '${memEmail}';
	let memSignCheck = '${memSignCheck}';

	console.log("session = " + memId + ", " + memNickName + ", " + memEmail + ", " + memSignCheck);
	
	checkMemId(memId, memNickName, memSignCheck);
});


$(document).on("click", ".h3-title1", function(){
	if($(this).next().css("display") == "none"){
		$(this).next().show();
		$(this).children("span").text("닫기");
	}else{
		$(this).next().hide();
		$(this).children("span").text("열기");
	}
});

function share_sns(type,url,title){
    if(type == 1){
    var popOption = "width=100, height=100, resizable=no, scrollbars=no, status=no;";
    window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(url)+'&t='+encodeURIComponent(title),"pop",popOption);
    }
	if(type == 2){
    var popOption = "width=500, height=500, resizable=no, scrollbars=no, status=no;";
    window.open('https://story.kakao.com/share?url='+encodeURIComponent(url)+'&t='+encodeURIComponent(title),"pop",popOption);
    }
	if(type == 3){
    var popOption = "width=350, height=500, resizable=no, scrollbars=no, status=no;";
    window.open('https://band.us/plugin/share?body='+url+'&title='+encodeURIComponent(title),"pop",popOption);
    }
}

function checkMemId(memId, memNickName, memSignCheck){
	console.log("채크 함수 실행" + memId+ memNickName);
	
	if(memSignCheck == '' || memSignCheck == null && memId != '') {
		$("#status_logout").hide();
		$("#status_sign01").hide();
		$("#status_login").show();
	}
	
	if(memSignCheck == '1' || memSignCheck == 1) {
		$("#status_logout").hide();
		$("#status_login").hide();
		$("#status_sign01").show();
	}
}

function selectAdrs(){
	var adrsSelect = document.getElementById("area1");
	
	// option value 가져오기
	var value = adrsSelect.options[document.getElementById("area1").selectedIndex].value;
	
	var $area = document.getElementById("area3");
	
	var area01 = "<option value='강남구'>강남구</option>"+
				"<option value='강동구'>강동구</option>"+
				"<option value='강북구'>강북구</option>"+
				"<option value='강서구'>강서구</option>"+
				"<option value='관악구'>관악구</option>"+
				"<option value='광진구'>광진구</option>"+
				"<option value='구로구'>구로구</option>";
	
	var area02 = "<option value=''>시·군·구 선택</option>";
				
	var area10 = "<option value='강릉시'>강릉시</option>"+
				"<option value='고성군'>고성군</option>"+
				"<option value='동해시'>동해시</option>"+
				"<option value='삼척시'>삼척시</option>"+
				"<option value='속초시'>속초시</option>"+
				"<option value='양구군'>양구군</option>"+
				"<option value='양양군'>양양군</option>"+
				"<option value='영월군'>영월군</option>"+
				"<option value='원주시'>원주시</option>"+
				"<option value='인제군'>인제군</option>"+
				"<option value='정선군'>정선군</option>"+
				"<option value='철원군'>철원군</option>"+
				"<option value='춘천시'>춘천시</option>"+
				"<option value='태백시'>태백시</option>"+
				"<option value='평창군'>평창군</option>"+
				"<option value='홍천군'>홍천군</option>"+
				"<option value='화천군'>화천군</option>"+
				"<option value='횡성군'>횡성군</option>";
				
	if(value == '01') {
		$area.innerHTML = area01;
	}
	if(value == '02') {
		$area.innerHTML = area02;
	}
	if(value == '03') {
		$area.innerHTML = area02;
	}
	if(value == '04') {
		$area.innerHTML = area02;
	}
	if(value == '05') {
		$area.innerHTML = area02;
	}
	if(value == '06') {
		$area.innerHTML = area02;
	}
	if(value == '07') {
		$area.innerHTML = area02;
	}
	if(value == '08') {
		$area.innerHTML = area02;
	}
	if(value == '09') {
		$area.innerHTML = area02;
	}
	if(value == '10') {
		$area.innerHTML = area10;
	}
	if(value == '11') {
		$area.innerHTML = area02;
	}
	if(value == '12') {
		$area.innerHTML = area02;
	}
	if(value == '13') {
		$area.innerHTML = area02;
	}
	if(value == '14') {
		$area.innerHTML = area02;
	}
	if(value == '15') {
		$area.innerHTML = area02;
	}
	if(value == '16') {
		$area.innerHTML = area02;
	}
	if(value == '17') {
		$area.innerHTML = area02;
	}
}

function addrCheck() {

	if(status_login.area1.value == "") {
		alert("광역시,도를 선택해 주세요.");
		status_login.area1.focus();
		return false;
	}
	
	else if(status_login.area2.value == "") {
		alert("시군구를 선택해 주세요.");
		status_login.area2.focus();
		return false;
	}
	
	else if(status_login.area3.value == "") {
		alert("값을 입력해 주세요.");
		status_login.area3.focus();
		return false;
	}

	else return true;

}
</script>

</html>