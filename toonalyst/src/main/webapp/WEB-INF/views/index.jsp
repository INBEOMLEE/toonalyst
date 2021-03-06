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
		height: auto;
	}
	.section_inline {
		width: 1180px;
		height: auto;
		margin: 70px auto;
	}
	.section_title {
		padding-left: 20px;
		padding-bottom: 10px;
		display: flex;
		align-items: center;
	}
	.section_title img {
		width: 70px;
		height: 70px;
	}
	.section_title h3 {
		font-size: 28px;
		letter-spacing: -.02em;
		display: inline-block;
	}
	.section_title p{
		font-weight: 600;
		font-size: 20px;
		text-align: center;
		display: inline-block;
		padding-top: 8px;
		padding-left: 15px;
	}
	.rank_outbox {
		width: 1180px;
		height: 390px;
		border: 1px solid #fafafa;
		border-radius: 10px;
		background: #fafafa;
		margin-bottom: 70px;
	}
	.rank_inbox {
		width: 1140px;
		height: 350px;
		margin: 20px auto;
		overflow: hidden;
	}
	.rank_box_1, .rank_box_2, .rank_box_3, .rank_box_4 {
		width: 2660px;
		height: 350px;
		overflow: auto;
		display: flex;
	}
	.webtoon {
		width: 250px;
		height: 350px;
		position: relative;
		margin-right: 10px;
		border-radius: 10px;
		background: #fff;
		cursor: pointer;
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
		border: none;
		width: 218px;
		height: 120px;
		margin: 16px auto 25px;
		text-align: center;
	}
	.webtoon_img > img{
		height: 100%;
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
	#lezhin_logo {
		width: 50px;
		height: 50px;
		margin-right: 10px;
	}
	#daum_logo {
		width: 50px;
		height: 50px;
		margin-right: 10px;
	}
	#kakao_logo {
		width: 50px;
		height: 50px;
		margin-right: 10px;
	}

</style>
</head>
<body>

	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />

	<section>
		<div class="section_outline">
			<div class="section_inline">
				<div class="section_title">
					<img alt="네이버웹툰로고" src="${path}/resources/img/naver_Webtoon_logo.png"><h3>Ranking</h3>
					<p><c:out value="${today}"/></p>
				</div>
				<div class="rank_outbox">
					<div class="rank_inbox">
						<div class="rank_box_1">
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="empty_bar"></div>
						</div>
					</div>
				</div>
				<div class="section_title">
					<img alt="레진코믹스로고" src="${path}/resources/img/Lezhin_Webtoon_logo.png" id="lezhin_logo"><h3>Ranking</h3>
					<p><c:out value="${today}"/></p>
				</div>
				<div class="rank_outbox">
					<div class="rank_inbox">
						<div class="rank_box_2">
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="empty_bar"></div>
						</div>
					</div>
				</div>
				<div class="section_title">
					<img alt="다음웹툰로고" src="${path}/resources/img/daum_Webtoon_logo.png" id="daum_logo"><h3>Ranking</h3>
					<p><c:out value="${today}"/></p>
				</div>
				<div class="rank_outbox">
					<div class="rank_inbox">
						<div class="rank_box_3">
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="empty_bar"></div>
						</div>
					</div>
				</div>
				<div class="section_title">
					<img alt="카카오웹툰로고" src="${path}/resources/img/kakao_Webtoon_logo.png" id="kakao_logo"><h3>Ranking</h3>
					<p><c:out value="${today}"/></p>
				</div>
				<div class="rank_outbox">
					<div class="rank_inbox">
						<div class="rank_box_4">
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
							</div>
							<div class="webtoon">
								<p class="webtoon_title">Loading...</p>
								<div class="webtoon_img"></div>
								<div class="lately_score"><span>최근평가 </span>매우 긍정적인</div>
								<div class="total_score"><span>모든평가 </span>매우 긍정적인</div>
								<div class="star_score"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
								<input type="hidden" class="webtoon_titleId">
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
		$.ajax({
			url: "${path}/rank/naver",
			type: 'GET',
			success: function(result){
				console.log(result);
				starRating(result, 1);
			},
			beforeSend:function(){
				for (var i = 0; i < 10; i++) {
					$('.rank_box_1 > .webtoon').eq(i).children('.webtoon_img').html('<img src="${path}/resources/img/ajax-loading2.gif" style="height: 100%;">');
				}
		    },
			error: function(){
				alert("System Error!");
			}
		});
		$.ajax({
			url: "${path}/rank/lezhin",
			type: 'GET',
			success: function(result){
				console.log(result);
				starRating(result, 2);
			},
			beforeSend:function(){
				for (var i = 0; i < 10; i++) {
					$('.rank_box_2 > .webtoon').eq(i).children('.webtoon_img').html('<img src="${path}/resources/img/ajax-loading2.gif" style="height: 100%;">');
				}
		    },
			error: function(){
				alert("System Error!");
			}
		});
		$.ajax({
			url: "${path}/rank/daum",
			type: 'GET',
			success: function(result){
				console.log(result);
				starRating(result, 3);
			},
			beforeSend:function(){
				for (var i = 0; i < 10; i++) {
					$('.rank_box_3 > .webtoon').eq(i).children('.webtoon_img').html('<img src="${path}/resources/img/ajax-loading2.gif" style="height: 100%;">');
				}
		    },
			error: function(){
				alert("System Error!");
			}
		});
		$.ajax({
			url: "${path}/rank/kakao",
			type: 'GET',
			success: function(result){
				console.log(result);
				starRating(result, 4);
			},
			beforeSend:function(){
				for (var i = 0; i < 10; i++) {
					$('.rank_box_4 > .webtoon').eq(i).children('.webtoon_img').html('<img src="${path}/resources/img/ajax-loading2.gif" style="height: 100%;">');
				}
		    },
			error: function(){
				alert("System Error!");
			}
		});
		$('.rank_box_1').scroll(function() {
			var scrollValue = $(this).scrollTop();
			if(scrollValue <= 0) {
				$('.rank_box_1 div').css('top', '0').css('left', '0');
			} else if(0 < scrollValue && scrollValue <= 1492) {
				$('.rank_box_1 div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_box_1 div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
		
		$('.rank_box_2').scroll(function() {
			var scrollValue = $(this).scrollTop();
			if(scrollValue <= 0) {
				$('.rank_box_2 div').css('top', '0').css('left', '0');
			} else if(0 < scrollValue && scrollValue <= 1492) {
				$('.rank_box_2 div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_box_2 div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
		
		$('.rank_box_3').scroll(function() {
			var scrollValue = $(this).scrollTop();
			if(scrollValue <= 0) {
				$('.rank_box_3 div').css('top', '0').css('left', '0');
			} else if(0 < scrollValue && scrollValue <= 1492) {
				$('.rank_box_3 div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_box_3 div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
		
		$('.rank_box_4').scroll(function() {
			var scrollValue = $(this).scrollTop();
			if(scrollValue <= 0) {
				$('.rank_box_4 div').css('top', '0').css('left', '0');
			} else if(0 < scrollValue && scrollValue <= 1492) {
				$('.rank_box_4 div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_box_4 div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
		
		$('.webtoon').click(function(){
			var titleId = $(this).children('.webtoon_titleId').val();
			location.href = "${path}/score/webtoon?titleId="+titleId;
		});
	});
	
	function starRating(result, num){
		var starscore = '';
		var rating = 0;
		for (var i = 0; i < 10; i++) {
			$('.rank_box_'+num+' > .webtoon').eq(i).children('.webtoon_title').text(result[i].titleName);
			$('.rank_box_'+num+' > .webtoon').eq(i).children('.webtoon_img').html('<img src="'+result[i].bannerimg+'">');
			$('.rank_box_'+num+' > .webtoon').eq(i).children('.webtoon_titleId').val(result[i].titleId);
			starscore = '';
			rating = result[i].rating;
			if(rating > 0){
				var j = 0;
				while (j < rating) {
					j += 2;
					if(rating<j){starscore = starscore+'<i class="fas fa-star-half-alt"></i>';}
					else{starscore = starscore+'<i class="fas fa-star"></i>';}
				}
			}
			$('.rank_box_'+num+' > .webtoon').eq(i).children('.star_score').html(starscore);
		}
	}
	
</script>
</body>
</html>