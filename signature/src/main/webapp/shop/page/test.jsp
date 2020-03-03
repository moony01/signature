<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta property="og:type" content="website">
<meta property="og:title" content="JSP일본제품 불매 및 친일청산 범국민 서명운동">
<meta property="og:url" content="https://no-jap.org">
<meta property="og:description" content="JSP일본제품 불매 및 친일청산 범국민 서명운동">
<meta property="og:image" content="http://no-jap.org/signature/assets/imgs/main-img.jpg">

<title>Insert title here</title>

  <!-- Load Facebook SDK for JavaScript -->
  <div id="fb-root"></div>
  
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  <!-- Your share button code -->
  <div class="fb-share-button" 
    data-href="https://www.your-domain.com/your-page.html" 
    data-layout="button_count">
  </div>
</body>
</html>




<script type="text/javascript">

function loginWithKakao(){
	//<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('8776ec1322cb0c8918bab2f18fe03c19');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.login({
        success: function (authObj) {
            Kakao.API.request({
            	url : '/v1/user/me',
            	success : function(res){  
            		//alert(JSON.stringify(res)); 
            		$.ajax({ 
            			type : 'POST',
            			url : '/mintProject/shop/member/kakaoLogin',
            			data : {'email' : res.kaccount_email},
            			success : function(){
            				location.href='/mintProject/shop/main/index';
            			},
            			error : function(err){
            				console.log(err);
            			}
            		});
            	}
            });
        },
        fail: function (err) {
            alert(JSON.stringify(err));
        }
    });
  //]]>	
}

</script>