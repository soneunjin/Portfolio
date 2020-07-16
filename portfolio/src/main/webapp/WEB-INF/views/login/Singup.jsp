<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/pro/css/w3.css" />
<link rel="stylesheet" href="/pro/css/signup.css" />
<link rel = "icon" href = "/pro/img/favicon.ico">
<style>
</style>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
function chk(){
	 var req = document.msform.req.checked;
	 var num = 0;
	 if(req == true){
	  num = 1;
	 }
	 if(num==1){
	 }else{
	  alert("개인정보 약관에 동의하셔야 합니다.");
	  $(location).attr('href','/pro/kakao/Signup.pro');
	 }
	}
</script>
</head>

<body>
<%-- <jsp:include page="/head.pro" flush="true" /> --%>
	<!-- multistep form -->

<form class="msform" id="msform" name="msform" method="post" action="/pro/kakao/joinProc.pro">


  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Consent to membership</li>
    <li>Account Setup</li>
    <li>Business registration</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Consent to membership</h2>
    <h3 class="fs-subtitle">Accept the terms</h3>
    <textarea rows="20" cols="150" name="textarea" id="textarea">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
		회원가입
		- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
		만14세 미만 아동 회원가입
		- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
		단체아이디 회원가입
		- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
		- 선택항목 : 대표 홈페이지, 대표 팩스번호
		둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
		- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
		셋째, 카카오 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
		넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다.
		- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
		다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
		- 신용카드 결제시 : 카드사명, 카드번호 등
		- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
		- 계좌이체시 : 은행명, 계좌번호 등
		- 상품권 이용시 : 상품권 번호
		나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
		- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
		- 협력회사로부터의 제공
		- 생성정보 수집 툴을 통한 수집
		   </textarea>
		   <br><br>
		   <input type="checkbox" name="req"> 개인정보 수집 및 이용에 동의합니다.
		   <br>
		   <hr>
    <input type="button" name="next" onclick="chk()" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Create your account</h2>
    <h3 class="fs-subtitle">This is step 1</h3>
    
    <input type="hidden" name="memno" id="memno" value="${userId}" />
    <input type="email" name="memid" id="memid" placeholder="* Email" />
    <input type="text" name="name" id="name" placeholder="* UserName" />
    <input type="text" name="phone" id="phone" placeholder="* Phone (010-xxxx-xxxx)" />
    <input type="text" name="membir" id="membir" placeholder="* birth (19xx-xx-xx)" />
			
            <select name="carno" style="width: 500px; height: 51px;">
                           <option value="1" id="ab1">소형</option>
                           <option value="2" id="ab2">경형</option>
                           <option value="3" id="ab3">준중형</option>
                           <option value="4" id="ab4">중형</option>
                           <option value="5" id="ab5">준대형</option>
                           <option value="6" id="ab6">대형</option>
                           <option value="7" id="ab7">스포츠카</option>
                           <option value="8" id="ab8">기타</option>
                        </select>
    <input type="button" name="previous" class="previous action-button" value="Previous" />                    
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Business registration</h2>
    <h3 class="fs-subtitle">Your Business InFomation</h3>
    <input type="text" name="bno" id="bno" placeholder="Business Number" />
    <input type="text" name="bname" id="bname" placeholder="Store Name" />
    <input type="text" name="bloc" id="bloc" placeholder="Store address" />
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" name="submit" id="submit" class="submit action-button" value="Submit" />
  </fieldset>
  
</form>
</body>
<Script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></Script>
<!-- <script type="text/javascript" src="/pro/js/jquery-3.5.0.min.js"></script> -->
<script type="text/javascript" src="/pro/js/signup.js"></script>
</html>