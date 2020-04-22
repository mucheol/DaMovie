<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="result" value="${param.result }"></c:set>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<c:choose>
	<c:when test="${result == 'loginFailed' }">
		<script>
			window.onload=function() {
				alert("아이디나 비밀번호가 틀립니다. 다시 로그인 하세요!!!");
			}
		</script>
	</c:when>
</c:choose>
<meta charset="UTF-8">
<title>로그인 창</title>
<style>
	
	.loginBox {
		width : 1980px; 
		height: 600px;
		background-color: #080808;
    	box-shadow: 0 0 50px 55px #080808;
}

		
	}
	
	#leftBox {
		border-right : none;
	}
	
	.login {
		height: 100%;
		padding: 0px;
	}
	
	.login > table {
		height: 100%;
		margin-left : 7%;
	}
	
	.loginInput > td > input {
		width : 50%;
		height: 50px;
	}
	
	#button > input {
		width : 20%;
		float : left;
		border-radius: 10px;
	}
	
	#lbutton {
		margin-left: 25%;
	}
	
	#rbutton {
		margin-left : 10%;	
	}
	
	#searcha {
		padding-left : 29%;
	}
	.searchbox {
		height: 10px;
	}
	#search > a {
		color : white;
		float : left;
		width: 20%;
   		font-size: 20px;
	}
</style>
</head>
<body>
	<div class="loginForm">
		<div class="loginBox">
			<form class="login" name="frmLogin" method="post" action="${contextPath }/member/login.do">
		<table width="80%" align="center">
			<tr align="center" class="loginInput">
				<td>
					<input type="text" name="id" value="" placeholder="아이디" />
				</td>
			</tr>
			<tr align="center" class="loginInput">
				<td>
					<input type="password" name="pwd" value="" placeholder="비밀번호" />
				</td>
			</tr>
			<tr align="center" class="searchbox">
				<td id="search">
					<a id="searcha">id 찾기</a>
					<a>pw 찾기</a>
				</td>
			</tr>
			<tr align="center" class="loginInput">
				<td id="button">
					<input id="lbutton" type="submit" value="로그인"/>
					<input id="rbutton" type="reset" value="회원가입"/>
				</td>
			</tr>
		</table>
	</form>
		</div>
	</div>
</body>
</html>