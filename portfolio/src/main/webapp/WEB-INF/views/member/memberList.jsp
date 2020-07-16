$<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/clsProj/css/w3.css">
<script type="text/javascript" src="/clsProj/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">
	$(function(){
		$('#lgbtn').click(function(){
			$(location).attr('href', '/clsProj/member/logoutProc.cls');
		});
		
		$('.mibtn').click(function(){
			var str = $(this).attr("id");
			$('#id').val(str);
			$('#frm').attr('action', '/clsProj/member/memberDetail.cls');
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<form method="post" action="" id="frm">
		<input type="hidden" name="id" id="id">
	</form>
	<div class="w3-content w3-center">
		<div class="w3-col w3-blue w3-card w3-margin">
			<h2>회원 리스트</h2>
		</div>
		<div class="w3-row"></div>
		<div class="w3-col m9"><p></p></div>
		<div class="w3-button w3-margin w3-orange w3-card" id="lgbtn">Logout</div>
		<div class="w3-row"></div>
		<!-- 멤버 리스트만큼 생성 -->
	<c:forEach var="data" items="${LIST}" varStatus="status">
		<div class="w3-button w3-card ${CLIST.get(status.index)} mibtn" id="${data.id}">${data.id}</div>
	</c:forEach>
	</div>
</body>
</html>