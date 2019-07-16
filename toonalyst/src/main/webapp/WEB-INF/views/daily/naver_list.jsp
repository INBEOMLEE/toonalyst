<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
	html { /* 부드러운 페이지 전환효과 */
		scroll-behavior: smooth;
	}
	.daily_outline {
		width: 100%;
		height: auto;
	}
	.daily_inline {
		width: 1180px;
		height: auto;
		margin: 0 auto;
	}
	.daily_list_flatform {
		width: 300px;
		margin: 30px auto;
		text-align: center;
	}
	.daily_list_flatform img {
		width: 150px;
		height: 150px;
	}
	.daily_menu {
		width: 800px;
		height: 55px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
		align-items: center;
		/* border-bottom: 5px solid #FF6C36; */
		position: relative;
	}
	.daily_menu_bottom {
		background: #FF6C36;
		height: 5px;
		width: 799px;
		position: absolute;
		bottom: -2px;
	}
	.daily_style {
		width: 100px;
		height: 50px;
		border: 1px solid #d5d5d5;
 		border-radius: 5px 5px 0 0;
		line-height: 50px;
		text-align: center;
		font-size: 17px;
		font-weight: 600;
		/* background: #d5d5d5; */
		color: #d5d5d5;
		transition: .2s;
	}
	.daily_list_style {
		width: 800px;
		height: auto;
		margin: 220px auto 0;
	}
	.daily_list {
		width: 100%;
		height: 130px;
		margin-bottom: 5px;
		display: flex;
		justify-content: space-between;
		align-items: center;
		
	}
	.webtoon_img {
		width: 218px;
		height: 120px;
		border: 1px solid #d5d5d5;
		border-radius: 5px;
		margin: 2px;
		line-height: 120px;
		text-align: center;
	}
	.webtoon_info {
		width: 500px;
		height: 120px;
		border: 1px solid #d5d5d5;
		border-radius: 5px;
		margin: 2px;
		line-height: 120px;
		font-size: 20px;
		font-weight: 500;
		text-align: center;
	}
	.webtoon_info span{
		font-size: 22px;
		font-weight: 600;
		color: #FF6C36;
		float: left;
		padding: 0 30px;
		border-right: 1px solid #d5d5d5;
		border-radius: 5px 0 0 5px;
		height: 118px;
	}
	.webtoon_score {
		width: 165px;
		height: 120px;
		margin: 2px;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}
	.toonalyst_score, .flatform_score {
		width: 100%;
		height: 59px;
		border: 1px solid #d5d5d5;
		border-radius: 5px;
		color: #FF6C36;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#daily_first_list {
		margin-top: 0px;
	}
	.daily_daily {
		background: #FF6C36;
		border: 1px solid #FF6C36;
	}
	.flatform_score img {
		width: 40px;
		height: 40px;
	}
	.toonalyst_score img {
		width: 30px;
		height: 30px;
		margin-right: 7px;
	}
	

</style>
</head>
<body>
	<section>
		<div class="daily_outline">
			<div class="daily_inline">
				<div id="daily_daily"></div>
				<div class="daily_list_flatform">
					<img alt="플랫폼 로고" src="${path}/resources/img/naver_Webtoon_logo.png">
				</div>
				<div class="daily_menu">
					<a href="#" class="daily_style daily_mon">월</a>
					<a href="#" class="daily_style daily_tue">화</a>
					<a href="#" class="daily_style daily_wed">수</a>
					<a href="#" class="daily_style daily_thur">목</a>
					<a href="#" class="daily_style daily_fri">금</a> <!-- 4 -->
					<a href="#" class="daily_style daily_sat">토</a>
					<a href="#" class="daily_style daily_sun">일</a>
					<div class="daily_menu_bottom"></div>
				</div>
				<div class="daily_list_style" id="daily_first_list">
					<div class="daily_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/naver_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="daily_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/naver_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="daily_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/naver_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<jsp:useBean id="now" class="java.util.Date"/>
				<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="today" />
				<input type="hidden" value ="">
			</div>
		</div>
	</section>
	<%@ include file="../include/footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			var selectDate = new Date(); // 오늘 날짜
			var theDay = selectDate.getDay(); // 목요일이라 4를 반환한다. 그런데 우리 a의 순서는 eq(4)가 금요일이다.
			// 반환되는 숫자보다 1이 작게 만들어야 함
			// 7진수에서 가장 큰 수 6을 더하고 7로 나누면 원래의 숫자보다 1보다 작은 나머지가 나온다.
			var order =( theDay + 6 ) % 7; 
			
			$(".daily_style").eq(order).css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			
			/* if(theDay == 1){ // 월요일   
				$(".daily_mon").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 2){ 
				$(".daily_tue").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 3){ 
				$(".daily_wed").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 4){ 
				$(".daily_thur").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 5){ 
				$(".daily_fri").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 6){ 
				$(".daily_sat").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} else if(theDay == 0){
				$(".daily_sun").css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			} */
			
			$('.daily_style').click(function(){
				$('.daily_style').css("background", "none").css("border", "1px solid #d5d5d5").css("color", "#d5d5d5");
				$(this).css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
			});
		});
		
	
	
	</script>
</body>
</html>