<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.section_outline {
		width: 100%;
		height: 100%;
	}
	.section_inline {
		width: 1180px;
		height: 100%;
		margin: 70px auto;
	}
	.section_title {
		padding: 30px 0 50px;
		text-align: center;
	}
	.section_title h3 {
		font-size: 28px;
		letter-spacing: -.02em;
	}
	.section_title p{
		padding-top: 20px;
		font-weight: 600;
		font-size: 17px;
	}
	.rank_box {
		width: 1180px;
		height: 390px;
		border: 1px solid #fafafa;
		border-radius: 10px;
		background: #fafafa;
	}
	.rank_content {
		width: 1140px;
		height: 350px;
		margin: 20px auto;
		overflow: hidden;
	}
	.rank_naver {
		width: 2660px;
		height: 350px;
		overflow: auto;
		display: flex;
	}
	.naver_toon {
		width: 250px;
		height: 350px;
		position: relative;
		margin-right: 10px;
		border-radius: 10px;
		background: #fff;
	}
	.empty_bar {
		width: 1px;
		height: 1800px;
		margin: 0;
		opacity: 1;
	}
	.webtoon_title {
		margin-top: 25px;
		text-align: center;
		font-size: 20px;
		font-weight: 600;
	}
	.webtoon_img {
		border: 1px solid black;
		border-radius: 10px;
		width: 218px;
		height: 120px;
		margin: 16px auto 25px;
	}
	.lately_score, .total_score {
		width: 180px;
		margin: 0 auto 8px;
		text-align: center;
	}
	.lately_score span, .total_score span {
		color: #FF6C36;
		padding-right: 15px;
	}
	.star_score {
		width: 218px;
		color: #FF6C36;
		font-size: 25px;
		text-align: center;
		margin: 30px auto;
	}

</style>
</head>
<body>
	<section>
		<div class="section_outline">
			<div class="section_inline">
				<div class="section_title">
					<h3>Rank. NAVER WebToon</h3>
					<p>2019.06.11 15:41</p>
				</div>
				<div class="rank_box">
					<div class="rank_content">
						<div class="rank_naver">
							<div class="naver_toon">
								<p class="webtoon_title">유미의 세포들</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">복학왕</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">연놈</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">세상은 돈과 권력</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">개장수</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">이츠마인</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">헬퍼 2: 킬베로스</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">아도나이</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">신암행어사</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="naver_toon">
								<p class="webtoon_title">신석기녀</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
							</div>
							<div class="empty_bar"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<%@ include file="include/footer.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		$('.rank_naver').scroll(function() {
			var scrollValue = $(this).scrollTop();
			if(scrollValue <= 0) {
				$('.rank_naver div').css('top', '0').css('left', '0');
			} else if(0 < scrollValue && scrollValue <= 1492) {
				$('.rank_naver div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_naver div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
	});
	
</script>
</body>
</html>