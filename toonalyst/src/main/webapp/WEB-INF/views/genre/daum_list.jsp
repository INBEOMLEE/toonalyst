<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
	.genre_outline {
		width: 100%;
		height: auto;
	}
	.genre_inline {
		width: 1180px;
		height: auto;
		margin: 0 auto;
	}
	.genre_list_flatform {
		width: 300px;
		margin: 30px auto;
		text-align: center;
	}
	.genre_list_flatform img {
		width: 110px;
		height: 110px;
		margin-top: 15px;
		margin-bottom: 10px;
	}
	.genre_menu {
		width: 800px;
		height: 50px;
		margin: 0 auto;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	.genre_style {
		width: 100px;
		height: 50px;
		border: 1px solid #d5d5d5;
		border-radius: 15px;
		line-height: 50px;
		text-align: center;
		font-size: 17px;
		font-weight: 600;
		background: #d5d5d5;
		color: white;
	}
	.genre_list_style {
		width: 900px;
		height: auto;
		margin: 220px auto 0;
		
	}
	.genre_list_title {
		width: 300px;
		margin: 0 auto 40px;
		font-size: 30px;
		font-weight: 600;
		text-align: center;
		line-height: 50px;
		color: gray;
	}
	.genre_list {
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
	#genre_last_list {
		margin-bottom: 220px;
	}
	#genre_first_list {
		margin-top: 100px;
	}
	.genre_daily {
		background: #FF6C36;
		border: 1px solid #FF6C36;
	}
	.flatform_score img {
		width: 30px;
		height: 30px;
		margin-right: 5px;
	}
	.toonalyst_score img {
		width: 30px;
		height: 30px;
		margin-right: 5px;
	}
	

</style>
</head>
<body>
	<section>
		<div class="genre_outline">
			<div class="genre_inline">
				<div id="genre_daily"></div>
				<div class="genre_list_flatform">
					<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
				</div>
				<div class="genre_menu">
					<a href="#genre_daily" class="genre_style genre_daily">일상</a>
					<a href="#genre_fantasy" class="genre_style genre_fantasy">판타지</a>
					<a href="#genre_gag" class="genre_style genre_gag">개그</a>
					<a href="#genre_action" class="genre_style genre_action">액션</a>
					<a href="#genre_purelove" class="genre_style genre_purelove">순정</a>
				</div>
				<div class="genre_list_style" id="genre_first_list">
					<div class="genre_list_title">일 상</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div id="genre_fantasy"></div>
				<div class="genre_list_style">
					<div class="genre_list_title">판 타 지</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div id="genre_gag"></div>
				<div class="genre_list_style">
					<div class="genre_list_title">개 그</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div id="genre_action"></div>
				<div class="genre_list_style">
					<div class="genre_list_title">액 션</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div id="genre_purelove"></div>
				<div class="genre_list_style" id="genre_last_list">
					<div class="genre_list_title">순 정</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 1</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 2</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
					<div class="genre_list">
						<div class="webtoon_img">웹툰 이미지</div>
						<div class="webtoon_info"><span>RANK 3</span>마음의 소리 ( 조 석 )</div>
						<div class="webtoon_score">
							<div class="toonalyst_score">
								<img alt="로고" src="${path}/resources/img/toonalyst_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
							<div class="flatform_score">
								<img alt="플랫폼 로고" src="${path}/resources/img/Daum_Webtoon_logo.png">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../include/footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.genre_style').click(function(){
				$('.genre_style').css("background", "#d5d5d5").css("border", "1px solid #d5d5d5");
				$(this).css("background", "#FF6C36").css("border", "1px solid #FF6C36")
			});
		});
	
	
	</script>
</body>
</html>