<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 창</title>
<style >
	.memberForm {
		    width: 1980px;
    height: 600px;
    background-color: #080808;
    box-shadow: 0px -20px 50px 55px #080808;
	}
	.text_center {
		text-align : center;
		color : white;
		margin-left : -8%;
	}
	.memberBox {
		height: 90%;
		margin-left: 29%;
	}
	
	.memberBox p {
		color :white;
	}
	
	.memberButton input {
		height : 40px;
		border-radius: 10px;
		margin-right : 10px;
	}
</style>
</head>
<body>
	<form class="memberForm" method="post" action="${contextPath }/member/addMember.do">
		<h1 class="text_center">회원 가입</h1>
		<table class="memberBox" align="center">
		<tr>
			<td width="200"><p align="right">아이디</p></td>
			<td width="400"><input type="text" name="id"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">비밀번호</p></td>
			<td width="400"><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">이름</p></td>
			<td width="400"><input type="text" name="name"></td>
		</tr>
		<tr>
			<td width="200"><p align="right">이메일</p></td>
			<td width="400"><input type="text" name="email"></td>
		</tr>
		<tr class="memberButton">
			<td width="100"><p>&nbsp;</p></td>
			<td width="500">
				<input type="submit" value="가입하기">
				<input type="reset" value="다시입력">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>