<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.body {
	margin: 0;
	width : 100%;
}
.mainForm2 {
	position: fixed;
	margin: 0px;
	padding: 0px;
	top: 0px;
	right:0px;
	bottom : 0px;
	left:0px;
	z-index: 1;
	height: 937px;
	z-index: 0;
}

.mainPoster > a > img {
	width: 1980px;
	height: 100%;
	background-image: url("/damovie/resources/images/movie_poster/small.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	vertical-align: top;
	position: absolute;
	opacity: 0.93;
}

.rankingTime {
	position :absolute;
	width : 1980px;
	height: 400px;
    z-index: 2;
}

.rankingTime>.rankingForm>p {
	margin: 0px;
	margin-left: 81%;
	color: white;
}

.rankingTime>.rankingForm>p>img {
	width: 15px;
	height: 15px;
}

.rankingPoster {
	position : relative;
	width : 100%;
	left : 3%;
}

.rankingImage > li {
	float: left;
	margin-right : 8%;
	width: 12%;
	height: 200px;
}

.ranking {
	width : 10%;
	height : 250px;
}

.ranking > a > img {
	width : 200px;
	height: 200px;
}

.rankingMovie > li {
	float : left;
	width : 8%;
	padding-left: 3%;
	margin-right: 9%;
	
}

.rankingMovie > li > p {
	color : white;
}

.rankingForm {
	width : 100%;
	height:100%;
	
}

.text {
	text-align: center;
	width : 1903px;
	height: 400px;
	position : absolute;
	bottom : 10%;
	
}

.text > h1 {
	color : white;
	font-size: 60px;
}

.text >  button {
	border : none;
		border-radius : 5px 5px 5px 5px;
		background-color: black;
	height: 66px;
	width : 300px;
}

.text > button > h2 {
	color : white;
	width: 100%;
}

</style>
</head>
<body>
	
	<div class="mainForm2">
	
	<div class="mainPoster">
			<a>
				<img src="/damovie/resources/images/movie_poster/damovie.jpg" />
			</a>
	</div>
	
	
<%-- 	<div class="rankingTime">
		<div class="rankingForm">
		<p>
			<img src="/damovie/resources/images/main_icon/clock.png" />
			${datatime }
		</p>
		
		<div class="rankingPoster">
			<ul class="rankingImage">
				<li><div class="ranking" id="r1"><a href="/damovie/main.do"><img src="/damovie/resources/images/movie/${image1 }"/></a></div></li>
				<li><div class="ranking" id="r2"><a href="/damovie/main.do"><img src="/damovie/resources/images/movie/${image2 }"/></a></div></li>
				<li><div class="ranking" id="r3"><a href="/damovie/main.do"><img src="/damovie/resources/images/movie/${image3 }"/></a></div></li>
				<li><div class="ranking" id="r4"><a href="/damovie/main.do"><img src="/damovie/resources/images/movie/${image4 }"/></a></div></li>
				<li><div class="ranking" id="r5"><a href="/damovie/main.do"><img src="/damovie/resources/images/movie/${image5 }"/></a></div></li>
			</ul>
			<ul class="rankingMovie">
				<li><p>1 ${name1 }</p></li>
				<li><p>2 ${name2 }</p></li>
				<li><p>3 ${name3 }</p></li>
				<li><p>4 ${name4 }</p></li>
				<li><p>5 ${name5 }</p></li>
			</ul>
		</div>
		</div>
	</div> --%>
	
	

	
	</div>
	
		<div class="text">
		<h1>국내 모든 영화예매를 클릭 몇번으로<br>지금 당장 원하는 영화를 예매해 보세요 </h1><br>
		<button ation="/damovie/main.do"><h2>예매하기</h2></button>
	</div>
	
	

</body>
</html>