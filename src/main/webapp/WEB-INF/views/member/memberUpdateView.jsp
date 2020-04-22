<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>
<!-- MemberVO 파일 임포트하기 -->
<%@ page import="com.movie.damovie.member.vo.MemberVO" %>
<%@ page import="com.movie.damovie.member.dao.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, td, tr{
	color: white;
	border:1px solid white;
}
.info_box{
	width : 1332px;
}
#main_Form{
	padding-top: 3%;
	padding-left: 15%;
}
#main_Form > .main_box {
	height: 1280px;
    width: 1280px;
    background-color: #0e0e0e;
    box-shadow: 0 0 43px 61px #0e0e0e;
}
#alert-success, #alert-danger{
	display: none;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(function(){
	//패스워드 일치 확인
	$(".alert-success").hide();
	$(".alert-danger").hide();
	$("input").keyup(function(){
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		if(pwd1 != "" || pwd2 != ""){
			if(pwd1 == pwd2){
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#edit").removeAttr("disabled");
			}else{
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#edit").attr("disabled","disabled");
			}
		}else{
			$("#edit").removeAttr("disabled");
		}
	});
});
</script>
<meta charset="UTF-8">
<title>개인정보 페이지</title>
</head>
<body>
	<div id="main_Form">
		<div class="main_box">
			<div class="info_box">
				<form name="input" method="post" action="${contextPath }/mypage/memberUpdate.do">
				<table>
					<tr>
						<td>아이디</td>
						<td><input name="userId" type="text" value=${member.id } size="20"  disabled/></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input name="userName" type="text" value=${member.name } size="20"  disabled/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="text" name="userPwd" id="pwd1" class="form-control" placeholder="비밀번호 입력"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="text" name="reuserPwd" id="pwd2" class="form-control" placeholder="비밀번호 확인"></td>
						<td><input type="text" id="alert-success" value="비밀번호가 일치합니다" readonly></td>
						<td><input type="text" id="alert-danger" value="비밀번호가 일치하지 않습니다." readonly></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email" value=${member.email }></td>
					</tr>
				</table>
					<input type="reset" value="리셋버튼">
					<input id="submit" type="submit" class="btn btn-success" value="회원정보수정"  disabled>
					<a href="${contextPath}/main.do"> <input class="go_main" type="button" value="메인화면"></a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>