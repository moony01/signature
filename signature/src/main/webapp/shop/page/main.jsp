<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- CONTENT BOX : START -->
<div id="contents-box">
	<h2 class="title">텍스트텍스트텍스트<br>텍스트텍스트텍스트<br>텍스트텍스트텍스트텍스트텍스트<br>텍스트 텍스트</h2>
	
	<div class="sign-total">
		<ul>
		    <li>
		        <dl>
		            <h4 class="sign-03">아이콘</h4>
		            <dt>총 서명</dt>
		            <dd style="color:#e77400">
						<p id="sign_01" class="signNumber">0</p>
						<em>명</em>
					</dd>
		        </dl>
		    </li>
		    
		    <li>
		        <dl>
		            <h4 class="sign-01">아이콘</h4>
		            <dt>온라인서명</dt>
		            <dd>
						<p id="sign_02" class="signNumber">0</p>
						<em>명</em>
					</dd>
		
		        </dl>
		    </li>
		    
		    <li>
		        <dl>
		            <h4 class="sign-02">아이콘</h4>
		            <dt>자필 서명</dt>
		            <dd>
						<p id="sign_03" class="signNumber">0</p>
						<em>명</em>
					</dd>
		        </dl>
		    </li>
		</ul>
	
		<p class="sign-notice">자필 서명인원은 매일 저녁 7시에 갱신됩니다.</p>
	</div>

	<div id="sign-login">
		<h2 class="title">-온라인 서명-</h2>
		<div class="login-top">
			<h3>1인 1서명이 원칙입니다.</h3>
			<p>개인정보는 철저히 보호됩니다.<br>원하시는 SNS로 로그인한 후 서명이 가능합니다.</p>
		</div>
	</div>

	<!-- 서명운동취지 : START -->
	<div class="sign-cont-box">
	
	<h3 class="h3-title1">서명운동 취지 <span class="textbtn">열기</span></h3>
	
	<div style="display:none;" >
	    <div class="sign-memo">
	        <img src="http://placehold.it/825x443" >
	        <strong>- 텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트 </strong><br>
			텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트<br>텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트<br> <br> <br>
	       	텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트<br> <br> <br>
	       	텍스트텍스트텍스트텍스트<br> 텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트. <br> <br>
	      	텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트.<br> 텍스트텍스트텍스트텍스트텍스트텍스트. <br> <br>
	        <strong>텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트.</strong><br> 텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트! <br> <br>
	    </div>
	
	    <dl class="file-info">
	        <dt>관련정보</dt>
	        <dd>
	            <a class="down" href="http://www.jjan.kr/news/articleView.html?idxno=2059309" target="blank">자료1.텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트</a>
	            <a class="down" href="http://www.domin.co.kr/news/articleView.html?idxno=1260880" target="blank">자료2.텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트</a>
	        </dd>
	    </dl>
		<div style="position:relative; height:0px;padding-bottom: 56%; ">
			<iframe src="https://www.youtube.com/embed/fLMzsU3L0-A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;"></iframe>
	    </div>
	</div>
	</div>
	<!-- 서명취지 : END -->
	  			
	<!-- 온라인 서명 : START -->
	<div class="sign-write-top">
	<div class="sign-write-box">
	    <h3 class="h3-title2" >온라인 서명하기</h3>
	    <div class="sns-sc">
	        <h4>SNS 공유하기</h4>
	        <a href="javaScript:share_sns(1,'http://localhost:8080/','테스트 사이트')" 
			class="s-facebook" data-service="facebook" data-title="">페이스북</a>
	
			<a href="javaScript:share_sns(2,'http://localhost:8080/','테스트 사이트')" 
			class="s-kakao" data-service="kakao" data-title="">카카오톡</a>
	
			<a href="javaScript:share_sns(3,'http://localhost:8080/','테스트 사이트')" 
			class="s-band" data-service="band" data-title="">네이버밴드</a>
	    </div>
	</div>
	
	<!-- logoutForm : START -->
	<form action="" method="post" id="status_logout" style="display: block;">
		<input type="hidden" name="_token" value="lf5kUGPGFPeplLV3smXxhFr7Fcg5SvUzenxr87Oc">
	    <div class="sign-form">
	        <div class="sign-text-box">
	            <div class="sign-text">
	              	 텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트 <br>
	                <em>소셜로그인(카카오톡, 네이버, 페이스북)으로 온라인 서명을 하실 수 있습니다. 단 1인 1서명에 한합니다.
	                <a href="./privacy.jsp" class="privacy"  target="_blank">개인정보 보호정책</a></em>
	            </div>
				
	        </div>
			<a class="signBtn" href="./login" target="_self">온라인서명하기</a>
	    </div>
		
	</form>
	<!-- logoutForm : END -->
	
	<!-- loginForm : START -->
	<form action="./goSign" method="post" name="status_login" id="status_login" onsubmit="return addrCheck()" style="display: none;">
	
	<input type="hidden" name="nickName" value="${memNickName}">
	<input type="hidden" name="id" value="${memId}">
	<input type="hidden" name="email" value="${memEmail}">
	
	<div class="sign-form">
	<p>서명을 위하여 <strong>본인 이름을 확인<span style="font-weight:200 !important;">(다르면 수정)</span> </strong>하시고<strong> 거주지역을 선택</strong>해 주시기 바랍니다. 개인정보는 철저히 보호됩니다.</p>
	<!-- <a href="./privacy.html" class="privacy"  target="_blank">개인정보 보호정책</a> -->
	
	<ul class="sign-form-list">	  
	    <li>
	        <span>본인 이름</span> 
	        <em><input name="agree_name" type="text" class="input-01" id="agree_name"  placeholder="이름기입(생략가능)" value="${memNickName}"></em>
	    </li>
	    
	    <li>
	        <span>거주 지역</span>
	        <em>
	        	<select name="area1" class="select-01" id="area1" onchange="selectAdrs()">
	          		<option value="">광역시·도 선택</option>
	        	  	<option value="01" >서울특별시</option>
	        	  	<option value="02" >부산광역시</option>
	        	  	<option value="03" >대구광역시</option>
	        	  	<option value="04" >인천광역시</option>
	        	  	<option value="05" >광주광역시</option>
	        	  	<option value="06" >대전광역시</option>
	        	  	<option value="07" >울산광역시</option>
	        	  	<option value="08" >세종특별자치시</option>
	        	  	<option value="09" >경기도</option>
	        	  	<option value="10" >강원도</option>
	        	  	<option value="11" >충청북도</option>
	        	  	<option value="12" >충청남도</option>
	        	  	<option value="13" >전라북도</option>
	        	  	<option value="14" >전라남도</option>
	        	  	<option value="15" >경상북도</option>
	        	  	<option value="16" >경상남도</option>
	        	  	<option value="17" >제주특별자치도</option>
	        	</select>
	        </em>
	
			<em id="areaList">
	        	<select name="area3" class="select-01" id="area3">
	          		<option value="">시·군·구 선택</option>
	        	</select>
	        </em>
	
			<em><input name="area2" type="text" class="select-01" id="area2"  placeholder="주소입력" value="" style="width: 220px;"></em>
	    </li>
	</ul>
	
	<div class="sign-text-box">
	    <div class="sign-text">텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트텍스트. <br></div>
	    <div class="btn-box"><input type="submit" value="동의합니다" class="btn" id="agree_btn" style="cursor:pointer;"></div>				 
	</div>
	
	</div>
	</form>
	<!-- loginForm : END -->
	
	<!-- SIGN CHECK : START -->
	<form action="" method="post" id="status_sign01" style="display: none;">
	    <div class="sign-form">
	        <div class="sign-text-box">
	            <div class="sign-text">
	            	서명을 완료했습니다.
	            </div>
	        </div>
	    </div>
		
	</form>
	<!-- SIGN CHECK : END -->
	</div>
	<!-- 온라인 서명 : END -->
	  			
	<div class="btn-box">
	    <p style="text-align:left; margin:0 0 10px 0; background:url(/assets/imgs/spot.png) no-repeat left 9px ; padding:0 0 0 5px">온라인 서명이 곤란하신 분은 아래 자필 서명부 양식을 다운받으셔서 서명하신 후 하단의 수신처로 보내 주시기 바랍니다.</p>
	    <a href="./signPDF.pdf" target="_blank" style="background:#333; font-size:15px;  padding:3px 15px; display:inline-block; border-radius:4px; color:#fff">자필서명부 양식 다운로드</a>
	</div>
  			
</div>
<!-- CONTENT BOX : END -->








