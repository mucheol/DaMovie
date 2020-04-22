<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
	height:1900px;
}
div, p{
	margin:0;
	padding:0;
	color: white;
	text-align: center;
}

#main_Form{
	padding-top: 3%;
	padding-left: 15%;
}
#main_Form > .review_box {
	height: 1280px;
    width: 1280px;
    background-color: #0e0e0e;
    box-shadow: 0 0 43px 61px #0e0e0e;
}



.member_profile{
	position: absolute;
	top:200px;
	left:850px;
	width:200px;
	height:200px;
}

.select_menu{
	position:absolute;
	top:450px;
	left:620px;
	width:700px;
	height: 300px;
	display: flex;
}
.member_info{
	padding-left: 300px;	
}



.fa {
 	vertical-align:middle;
 	color: white;
 	} 


</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function(){
		$(".member_info").click(function(){
			location.href="/damovie/mypage/memberUpdateView.do";
		});
	});
</script>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<div id="main_Form">
		<div class="review_box">
		
			<div class="member_profile">
				<div class="profile_image"><a href="#"><span style="color: white"><i class="fa fa-user-edit fa-2x" aria-hidden="true">&nbsp; 프로필 사진</i></span></a><br></div>
				<p>${member.name }님</p>
			</div>
				
			<div class="select_menu">
				<div class="member_book">
					<a class="book_info" href="#"><span style="color: white"><i class="fa fa-tablet-alt fa-2x" aria-hidden="true">&nbsp; 예매확인</i></span></a>
				</div>
			
				<div class="member_info">
					<span style="color: white"><i class="fa fa-user-lock fa-2x" aria-hidden="true">&nbsp; 내 정보 관리</i></span>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>