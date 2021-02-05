<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="format-detection" content="telephone=no" />
<meta property="og:type" content="website">
<meta property="og:title" content="JSP일본제품 불매 및 친일청산 범국민 서명운동">
<meta property="og:url" content="https://no-jap.org">
<meta property="og:description" content="JSP일본제품 불매 및 친일청산 범국민 서명운동">
<meta property="og:image" content="http://no-jap.org/signature/assets/imgs/main-img.jpg">

<title>JSP일본제품 불매 및 친일청산 범국민 서명운동</title>

<!-- LIB -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="/signature/shop/css/common.css" />
<link rel="stylesheet" href="/signature/shop/css/style.css" />
</head>
<body>
<div id="all">

<div id="header">
    <div class="main_bg"><h1>우리 시대의 독립운동이<br>시작되었습니다!</h1></div>
	<div class="patten"></div>
</div>
	
<jsp:include page="${display}" />
  			
<div id="footer">
<div class="copyright">
    <a class="onsite-logout">일본제대로알기운동본부(본부장 황호진)</a><br /> (전화: 063-276-4650, 팩스: 0504-489-3535, 이메일: dlgusco04@nate.com)
</div>
</div>
  			
</div>
</body>
<script type="text/javascript">



$(document).ready(function() {
	let memId = '${memId}';
	let memNickName = '${memNickName}';
	let memEmail = '${memEmail}';

	console.log("session = " + memId + ", " + memNickName + ", " + memEmail);
	
	checkMemId(memId, memNickName);
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

function checkMemId(memId, memNickName){
	console.log("채크 함수 실행" + memId+ memNickName);
	
	if(memId != '') {
		$("#status_logout").hide();
		$("#status_login").show();
	}
}

function selectAdrs(){
	var adrsSelect = document.getElementById("area1");
	
	// option value 가져오기
	var value = adrsSelect.options[document.getElementById("area1").selectedIndex].value;
	
	console.log("value = ",value);
	
	var $area = document.getElementById("area3");
	var area11 = "<option value='강릉시'>강릉시</option>"+
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
				
	if(value == '11') {
		debugger;
		console.log("if suc");
		$area.innerHTML = area11;
	}
	
	
}
</script>

</html>