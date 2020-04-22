<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
	position:absolute;
	width : 100%;
	height: 100%;

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

.outer {
	width : 1332px;
    color: white;
}

.outer_2 {
	width : 1332px;
}

table, th, td{
	border:1px solid white;
}
caption{
 	border: 3px solid white ; 
 	font-size: 30px;
}
.for_dash{
	border-bottom: 2px dashed white;
	margin:-20px -20px 20px -20px;
}
.question{
	margin-top:-15px;

}

.QnA{ /* Q&A내용들어가는 박스 */
	padding:20px;
	margin-top: -15px;
}


/* Q랑 A css */
p em{		/* Q */
	color:blue;
}
em{			/* A */
	color:red;
	border: 1px solid white;
	padding-right: 5px;
	padding-left: 2px;
	font-size: 10px;
	font-weight: 900;
}


.logo{
	position:absolute;
	left:38%;
	display: flex;
	margin-top: 2%;
}
.logo_m{
	margin: 0 40px;
}
</style>
<meta charset="UTF-8">
<title>고객센터</title>
</head>
<body>
<div id="main_Form">
<div class="review_box">
	 <div class="outer">
			<table class="outer_2">
				<caption>자주하는 질문들</caption>
				
			<!-- 행 관련 -->
			<div class="col">
				<colgroup span="10">
					<col style="width:111px">
					<col style="width:*%">
				</colgroup>
			</div>
			<!-- 열 관련 -->
				<thead>
					<tr>
						<th>분류</th>
						<th>내용</th>
					</tr>
				</thead>
				
			<!-- 질문들 -->
				<tbody class="textbox">
					<tr>
						<th>[예매관련]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">예매내역 취소 및 환불방법이 궁금합니다.<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">예매취소 및 환불은 상영시간 20분 전까지 가능하시며 우측상단 mypage에서 '예매취소'를 눌러주시면<br>
														예매시 결제하신 계좌로 즉시 환불처리됩니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[예매관련]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">영화예매를 잘못했는데 변경은 어떻게 하나요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">예매내역 변경은 예매취소나 환불 후 재 결제하는 방식으로 가능합니다..<br>
										mypage의 [예매확인 및 취소]에서 상영시간 20분 전까지 취소가 가능하며, 상영시작 20분 전까지 재 예매가 가능합니다.<br>
										현장에서는 영화의 상영시간 전까지 매표소에서 전체 환불 후 원하시는 시간이나 좌석으로 재 결제를 하셔야 합니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[예매관련]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">홈페이지에서 영화예매는 시작 몇분전까지 가능한가요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">영화예매는 상영시간 20분전까지 가능하며 결제까지 마쳐주셔야합니다.<br>
										단, 상영시작시간이 20분 미만이라면 현장에서 예매진행 부탁드립니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[예매관련]</th>
						<td>
							<div class="QnA">
								<p>
								
									<em>Q</em>
									<div class="question">다무비 홈페이지에서 예매시 수수료가 있나요??<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">다무비 공식 홈페이지를 통한 예매 진행시 영화사들과의 통합예매를 위한 과정에서<br>
										기존 각 영화사에서 책정한 가격외에 건당 1,000원의 수수료가 발생합니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[예매관련]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">영화 관람등급은 어떻게 되나요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">전체관람가 : 모든 연령의 고객이 관람가능<br><br>
										12세 이상 관람가 : 만12세 이상(주민등록상 생일기준) 관람 가능<br>
                         				만12세 미만 고객은 보호자(성인) 동반 시 관람 가능<br>
										<br>
										15세 이상 관람가 : 만15세 이상(주민등록상 생일기준) 관람 가능<br>
                     					만15세 미만 고객은 보호자(성인 동반 시 관람 가능<br>
										<br>
										청소년 관람불가 : 만18세 이상(주민등록상 생일기준) 관람 가능<br>
                         				- 신분증 지참 필수 (티켓 구매, 입장 시 신분증 확인 必)<br>
                        				만18세 미만 고객은 보호자(성인) 동반 시에도 관람 불가<br>
										<br>
										* 보호자(성인) : 만 20세 이상의 성인 
									</div>
								</div>
							</div>
						</td>
					</tr>
					
					<tr>
						<th>[홈페이지]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">아이디를 바꾸고 싶은데 수정할 수 있나요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">회원가입시 입력한 아이디는 변경이 불가능하며,<br>
										탈퇴 후 재가입(신규가입)을 통해 새로운 아이디로 지정할 수 있습니다.<br><br>
										단, 탈퇴 시 재가입은 5일 이후부터 가능합니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[홈페이지]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">이름을 개명했는데 어디서 바꾸나요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">홈페이지 로그인 후 [mypage]에서 정보수정을 통해 변경 가능합니다<br>
										<br>단, 신용평가기관에 개명된 이름이 먼저 등록되어 있어야 합니다.
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>[홈페이지]</th>
						<td>
							<div class="QnA">
								<p>
									<em>Q</em>
									<div class="question">자주하는 질문외에 다른 질문이 있는데 문의할 방법이 없나요?<br><br></div>
								</p>
								<div class="for_dash"></div>
								<div>
									<em>A</em>
									<div class="answer">DaMovie에서는 현재 고객센터에서 자주하는 질문 페이지만 운영중에 있으며<br>
										그 외의 질문은 홈페이지 하단의 전화번호 555-5555로 연락해주시면 상담원과의 1:1 상담으로 해결 가능합니다.</div>
								</div>
							</div>
						</td>
					</tr>
					
				</tbody>	
			</table>
		</div>
		<div class="logo">
			<div><a href="http://www.cgv.co.kr/"><img src="http://img.cgv.co.kr/R2014/images/title/h1_cgv.png" width="120px;"></a></div>
			<div class="logo_m"><a href="https://megabox.co.kr/"><img src="https://img.megabox.co.kr/static/pc/images/common/ci/logo.png" width="140px;"></a></div>
			<div><a href="https://www.lottecinema.co.kr/"><img src="/damovie/resources/images/lotte_logo.png" width="200px;" height="70px;"></a></div>
		</div>
</div>
</div>
</body>
</html>