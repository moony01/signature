<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<div id="contents-box">
	<div id="sign-login">
		<h2 class="title">-온라인 서명-</h2>
		<div class="login-top">
			<h3>1인 1서명이 원칙입니다.</h3>
			<p>개인정보는 철저히 보호됩니다.<br>원하시는 SNS로 로그인한 후 서명이 가능합니다.</p>
		</div>
		<ul class="sns-login">
			<li><a id="login-btn-kakao" class="kakao-login" onclick="javascript:loginWithKakao();"><strong>카카오톡</strong>계정으로 로그인</a></li>
			<li><a class="naver-login"><strong>네이버</strong>계정으로 로그인</a></li>
			<li><a id="loginBtn" class="facebook-login button facebook"><strong>페이스북</strong>계정으로 로그인</a> </li>
		</ul>
	</div>	
</div>

<script type="text/javascript">

let id = '';
let nickName = '';
let email = '';
//카카오 로그인 함수
function loginWithKakao(){
	console.log("click event!");
	//<![CDATA[
    Kakao.init('5d2f5f6c1a49e1c83ec357b2dfe5c376'); // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.Auth.login({
      success: function(authObj) {
        //alert(JSON.stringify(authObj));
        Kakao.API.request({
        	url : '/v2/user/me', //비동기식 경로가 v2로 업데이트됐다??
        	success : function(res){
        		//alert(JSON.stringify(res));
        		//console.log(res.id);
        		//console.log(res.properties['nickname']);
        		//console.log(res.kakao_account.email);

         		id = res.id;
        		nickName = res.properties['nickname'];
        		email = res.kakao_account.email;

        		//console.log('id' + id);
        		//console.log('nickName' + nickName);
        		//console.log('email' + email);

        		$.ajax({
        			type : 'POST',
        			url : '/signature/shop/page/snsLogin',
        			data : {
        				'id' : id,
        				'nickName' : nickName,
        				'email' : email
       				},
       				success : function(){
       					console.log('data처리 완료');
       					window.location.href="/signature/shop/page/index";
       				},
       				error : function(err){
       					console.log(err);
       				}
        		});
        	}
        });
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  //]]>
}

</script>




