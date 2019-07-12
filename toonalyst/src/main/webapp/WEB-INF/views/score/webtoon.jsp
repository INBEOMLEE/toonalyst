<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
	.webtoon_section {
		width: 100%;
		height: auto;
	}
	.webtoon_inline {
		width: 1180px;
		height: auto;
		margin: 50px auto 0;
	}
	.search_bar{
		margin: 0 auto;
		width: 800px;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
	}
	.search_content {
		width: 700px;
		height: 50px;
	}
	.search_icon {
		width: 50px;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 25px;
	}
	
	#search_result{
		position: absolute; 
		width: 700px; 
		min-height: 50px; 
		top: 50px; 
		left: 25px;
		border: 1px solid lightgray; 
		background-color: white; 
		padding: 10px;
		z-index: 1;
		display: none;
	}
	
	#search_result > div{
		padding: 2px;
	}
	#search_result > div:hover{
		background-color: #eeeeee;
	}
	#search_result > div > a{
		display: flex;
	}
	#search_result > div > a > span{
		margin-left: 5px;
	}
	#search_result img{
		width: 20px;
	}
	
	.webtoon_bar {
		width: 1000px;
		height: 50px;
		margin: 50px auto 0;
		border-top: 5px solid #FF6C36;
		border-bottom: 2px solid #dadada;
	}
	.webtoon_box {
		width: 1000px;
		height: 300px;
		margin: 0 auto;
		border-bottom: 2px solid #dadada;
		display: flex;
		justify-content: space-evenly;
		align-items: center;
	}
	.webtoon_img {
		width: 218px;
		height: 120px;
		position: relative;
	}
	.webtoon_img > img{
		width: inherit;
	}
	.flatform_logo {
		position: absolute;
		top: -20%;
		left: -10%;
	}
	.flatform_logo img {
		width: 50px;
		height: 50px;
	}
	.webtoon_info {
		width: 400px;
		height: 190px;
		border-top: 1px solid #dadada;
		display: flex;
		flex-direction: column;
	}
	.webtoon_title_writer {
		line-height: 70px;
		text-align: center;
		font-size: 18px;
		border-bottom: 1px solid #dadada;
		font-weight: 600;
	}
	.webtoon_score {
		line-height: 60px;
		text-align: center;
		font-size: 18px;
		display: flex;
		justify-content: center;
		align-items: center;
		border-bottom: 1px solid #dadada;
	}
	.webtoon_score div {
		width: 50%;
		text-align: center;
	}
	.score_title {
		border-right: 1px solid #dadada;
		font-size: 15px;
		font-weight: 600;
	}
	.lately_score, .total_score {
		font-size: 15px;
		color: #FF6C36;
		font-weight: 600;
	}
	.webtoon_infomation {
		width: 1000px;
		height: auto;
		margin: 50px auto;
	}
	.webtoon_info_list {
		width: 100%;
		height: 50px;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	.webtoon_info_style {
		width: 330px;
		line-height: 50px;
		text-align: center;
		color: #d5d5d5;
		border: 1px solid #d5d5d5;
		border-radius: 5px 5px 0 0;
		font-size: 17px;
		font-weight: 600;
		cursor: pointer;
		transition: .2s;
	}
	.webtoon_info_border {
		width: 1000px;
		height: 5px;
		margin: 0 auto;
		background: #FF6C36;
	}
	.webtoon_info_view {
		width: 1000px;
		border-collapse: collapse;
		margin: 20px 0px;
		display: none;
	}
	.webtoon_info_view tr, .webtoon_info_view td {
		height: 60px;
		border-bottom: 1px solid #ededed;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 15px;
	}
	.webtoon_info_img {
		flex: 1;
	}
	.webtoon_info_title {
		flex: 3;
		justify-content: unset!important;
		padding-left: 10px;
	}
	.webtoon_info_score {
		flex: 1.5;
	}
	.webtoon_info_date {
		flex: 1;
	}
	.webtoon_info_img img {
		width: 71px;
		height: 41px;
		border: 1px solid black;
	}
	.webtoon_info_score i {
		color: #FF6C36;
	}
	.webtoon_info_score span {
		margin-left: 3px;
	}
	.other_work {
		width: 695px;
		height: 165px;
		margin: 50px auto;
		display: none;
	}
	.other_work_title {
		width: 100%;
		height: 32px;
		background: #f7f7f7;
		font-size: 15px;
		font-weight: 600;
		padding-left: 10px;
		line-height: 32px;
		display: flex;
		align-items: center;
	}
	.other_work_title span {
		width: 30px;
		line-height: 20px;
		border-radius: 10px;
		color: white;
		background: #FF6C36;
		font-size: 13px;
		font-weight: 500;
		display: inline-block;
		text-align: center;
		margin-right: 5px;
	}
	.other_work_box {
		width: 100%;
		height: 133px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.other_work_content {
		width: 665px;
		height: 100px;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	.other_work_img {
		width: 125px;
		height: 100px;
	}
	.other_work_img img {
		width: 125px;
		height: 100px;
		border: 1px solid #ededed;
	}
	.other_work_info {
		width: 535px;
		height: 100px;
	}
	.other_work_info > div {
		width: 100%;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		border: 1px solid #ededed;
	}
	.other_work_info h4 {
		flex: 1;
		text-align: center;
	}
	.other_info {
		flex: 1;
		text-align: center;
		font-size: 14px;
	}
	.other_info i {
		color: #FF6C36;
	}
	.webtoon_score_page {
		width: 1000px;
		height: 600px;
		margin: 30px auto;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.webtoon_score_box {
		width: 900px;
		height: 550px;
		display: flex;
		justify-content: space-between;
		
	}
	.score_style {
		width: 440px;
		height: 550px;
		display: flex;
		flex-direction: column;		
	}
	.flatform_logo_img {
		width: 100%;
		height: 400px;
		border: 1px solid #ededed;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.flatform_logo_img img {
		width: 300px;
		height: 300px;
	}
	#toonalyst_logo {
		width: 215px;
		height: 215px;
	}
	.flatform_score_point {
		width: 100%;
		height: 150px;
		border: 1px solid #ededed;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 35px;
		color: #FF6C36;
	}
	.flatform_score_point span {
		margin-left: 10px;
	}
	.webtoon_score_play {
		width: 1000px;
		height: auto;
		margin: 0 auto;
		border-top: 2px solid #dadada;
		border-bottom: 2px solid #dadada;
	}
	#total_score {
		width: 800px;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 20px auto 0;
	}
	#total_score div {
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#total_score div:nth-child(odd) {
		flex: 1;
		border: 1px solid #dadada;
		font-size: 20px;
	}
	#total_score div:nth-child(even) {
		flex: 3;
		border-top: 1px solid #dadada;
		border-right: 1px solid #dadada;
		border-bottom: 1px solid #dadada;
		font-size: 18px;
	}
	.webtoon_reply_list {
		width: 800px;
		height: 150px;
		margin: 20px auto 0;
	}
	.webtoon_reply_user {
		width: 100%;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		border: 1px solid #dadada;
	}
	.webtoon_reply_user img {
		margin-right: 5px;
	}
	.webtoon_reply_user span{
		margin-left: 20px;
	}
	#user_id {
		font-weight: 600;
		margin: 0;
	}
	.webtoon_reply_content {
		width: 100%;
		height: 100px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.webtoon_reply_content div{
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.webtoon_score_icon {
		flex: 1;
		font-size: 30px;
		height: 100%;
		border-right: 1px solid #dadada;
		border-left: 1px solid #dadada;
		border-bottom: 1px solid #dadada;
		display: flex;
		flex-direction: column;
	}
	.webtoon_score_icon img {
		margin-right: 5px;
	}
	.webtoon_score_icon span {
		font-size: 16px;
	}
	#user {
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		border-bottom: 1px solid #dadada;
	}
	#good_check {
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	#good_check span {
		flex: 1;
		display: flex;
		justify-content: center;
		align-items: center;
		cursor: pointer;
	}
	#good_check i {
		flex: 1;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 30px;
		color: #d5d5d5;
		
	}
	.webtoon_good {
		border-right: 1px solid #dadada;
	}
	.webtoon_score_content {
		flex: 4;
		height: 100%;
		border-right: 1px solid #dadada;
		border-bottom: 1px solid #dadada;
	}
	.webtoon_reply_write {
		width: 800px;
		height: auto;
		margin: 20px auto;
		
	}
	.webtoon_score_content textarea {
		width: 100%;
		height: 98px;
		padding: 10px;
		border: none;
		outline: none;
	}
	.webtoon_score_btn {
		flex: 1;
		height: 100%;
		font-size: 20px;
		font-weight: 600;
		background: #d5d5d5;
		color: white;
		border: 1px solid #d5d5d5;
	}
	.webtoon_score_btn:hover {
		background: #FF6C36;
		cursor: pointer;
	}
	.txt_box_wrap {
		width: 100%;
		height: 20px;
		text-align: center;
		margin-bottom: 20px;
	}
	#txt_box {
		color: #FF6C36;
		font-size: 16px;
		display: none;
	}
	/* 댓글창 디자인 */
	.score_outline {
		width: 100%;
	}
	.score_inline {
		width: 1000px;
		margin: 0 auto;
	}
	
	
</style>
</head>
<body>
	<section>
		<div class="webtoon_section">
			<div class="webtoon_inline">
				<!-- 검색창 -->
				<div class="search_bar">
					<input type="text" class="search_content">
					<div class="search_icon">
						<i class="fas fa-search"></i>
					</div>
					<div id="search_result">
					</div>
				</div>	
				
				<!-- 웹툰 소개 -->
				<div class="webtoon_bar"></div>
				<div class="webtoon_box">
					<div class="webtoon_img">
						<div class="flatform_logo">
							<img alt="logo" src="${path}/resources/img/${wDto.platForm}_Webtoon_logo.png">
						</div>
						<img src="${wDto.bannerimg}">
					</div>
					<div class="webtoon_info">
						<div class="webtoon_title_writer">${wDto.titleName} (${wDto.writer})</div>
						<div class="webtoon_score">
							<div class="score_title">최근 평가</div>
							<div class="lately_score">매우 긍적적인</div>
						</div>
						<div class="webtoon_score">
							<div class="score_title">모든 평가</div>
							<div class="total_score">매우 긍적적인</div>
						</div>
					</div>
				</div>
				
				<!-- 웹툰 상세내용 -->
				<div class="webtoon_infomation">
					<div class="webtoon_info_list">
						<div class="webtoon_info_style">웹툰 평점</div>
						<div class="webtoon_info_style">최근 작품</div>
						<div class="webtoon_info_style">작가의 다른 작품</div>
					</div>
					<div class="webtoon_info_border"></div>
					
					<!-- 웹툰 평점 -->
					
					<div class="webtoon_score_page">
						<div class="webtoon_score_box">
							<div class="score_style toonalyst_score">
								<div class="flatform_logo_img">
									<img alt="이미지" src="${path}/resources/img/toonalyst_logo.png" id="toonalyst_logo">
								</div>
								<div class="flatform_score_point">
									<div class="star_score"></div>
									<span>${wDto.innerrating}</span>
								</div>
							</div>
							<div class="score_style flatform_score">
								<div class="flatform_logo_img">
									<img alt="이미지" src="${path}/resources/img/Naver_Line_Webtoon_logo.png">
								</div>
								<div class="flatform_score_point">
									<div class="star_score"></div>
									<span>${wDto.rating}</span>
								</div>						
							</div>
						</div>
					</div>
					
					<!-- 최근 작품 (5건) -->
					<table class="webtoon_info_view">
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1176. 나만 빼고 다
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.53</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.24
							</td>
						</tr>
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1175. 빔
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.90</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.17
							</td>
						</tr><tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1174. 가발의 모험
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.90</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.10
							</td>
						</tr><tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1173. 간병 마감
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.87</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.03
							</td>
						</tr>
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1172. 나도 웹툰작가
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.91</span>
							</td>
							<td class="webtoon_info_date">
								2019.05.27
							</td>
						</tr>
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1176. 나만 빼고 다
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.53</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.24
							</td>
						</tr>
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1175. 빔
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.90</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.17
							</td>
						</tr><tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1174. 가발의 모험
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.90</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.10
							</td>
						</tr><tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1173. 간병 마감
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.87</span>
							</td>
							<td class="webtoon_info_date">
								2019.06.03
							</td>
						</tr>
						<tr>
							<td class="webtoon_info_img">
								<img alt="이미지" src="">
							</td>
							<td class="webtoon_info_title">
								1172. 나도 웹툰작가
							</td>
							<td class="webtoon_info_score">
								<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i> 
								<span>9.91</span>
							</td>
							<td class="webtoon_info_date">
								2019.05.27
							</td>
						</tr>
					</table>
					
					<!-- 작가의 다른 작품 -->
					<div class="other_work">
						<div class="other_work_title"><span>대표</span>마음의 소리</div>
						<div class="other_work_box">
							<div class="other_work_content">
								<div class="other_work_img">
									<img alt="이미지" src="">
								</div>
								<div class="other_work_info">
									<div>
										<h4>장르 / 감성</h4>
										<div class="other_info">에피소드 / 유머</div>
									</div>
									<div>
										<h4>평점</h4>
										<div class="other_info">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
											<span>9.86</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="other_work">
						<div class="other_work_title">조의 영역</div>
						<div class="other_work_box">
							<div class="other_work_content">
								<div class="other_work_img">
									<img alt="이미지" src="">
								</div>
								<div class="other_work_info">
									<div>
										<h4>장르 / 감성</h4>
										<div class="other_info">스토리 / 기타</div>
									</div>
									<div>
										<h4>평점</h4>
										<div class="other_info">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
											<span>9.94</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="other_work">
						<div class="other_work_title">이름을 불러주세요</div>
						<div class="other_work_box">
							<div class="other_work_content">
								<div class="other_work_img">
									<img alt="이미지" src="">
								</div>
								<div class="other_work_info">
									<div>
										<h4>장르 / 감성</h4>
										<div class="other_info">에피소드 / 공감</div>
									</div>
									<div>
										<h4>평점</h4>
										<div class="other_info">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
											<span>9.93</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="other_work">
						<div class="other_work_title">너 사용법</div>
						<div class="other_work_box">
							<div class="other_work_content">
								<div class="other_work_img">
									<img alt="이미지" src="">
								</div>
								<div class="other_work_info">
									<div>
										<h4>장르 / 감성</h4>
										<div class="other_info">에피소드 / 공감</div>
									</div>
									<div>
										<h4>평점</h4>
										<div class="other_info">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
											<span>9.76</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="other_work">
						<div class="other_work_title">문유</div>
						<div class="other_work_box">
							<div class="other_work_content">
								<div class="other_work_img">
									<img alt="이미지" src="">
								</div>
								<div class="other_work_info">
									<div>
										<h4>장르 / 감성</h4>
										<div class="other_info">스토리 / 유머</div>
									</div>
									<div>
										<h4>평점</h4>
										<div class="other_info">
											<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
											<span>9.96</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 웹툰 평가 리스트 구역 -->
					<div class="webtoon_score_play">
						<!-- 현재까지 종합된 개수 -->
						<div id="total_score">
							<div><i class="fas fa-thumbs-up" style="color: dodgerblue;"></i></div>
							<div style="color: dodgerblue;">86%<span style="font-size: 14px; margin-left: 10px;">(172명)</span></div>
							<div><i class="fas fa-thumbs-down" style="color: #FF4848;"></i></div>
							<div style="color: #FF4848;">14%<span style="font-size: 14px; margin-left: 10px;">(28명)</span></div>
						</div>
					
						<!-- 평점 영역 -->
						<div class="score_outline">
							<div class="score_inline" id="scoreList">
							<!-- 여기에 scoreList띄움 -->
							</div>
						</div>
						
						<c:if test="${!empty sessionScope.loginUser.id}"> <!-- 세션을 체크해서 비어있지 않으면 등록할 수 있게 해준다. -->
							<!-- 평가 작성 구역 -->
							<div class="webtoon_reply_write">
								<div class="webtoon_reply_user">
									<span>작성한 게시글 수 : ${sessionScope.loginUser.boardcnt}개</span>
									<span>작성한 댓글 수 : ${sessionScope.loginUser.commentcnt}개</span>
								</div>
								<div class="webtoon_reply_content">
									<div class="webtoon_score_icon">
										<div id="user">
											<img alt="이미지" src="${path}/resources/img/level/${sessionScope.loginUser.grade}.gif">
											<span id="user_id">${sessionScope.loginUser.id}</span><br>
										</div>
										<div id="good_check">
											<span class="webtoon_good"><i class="fas fa-thumbs-up"></i></span>
											<span class="webtoon_hate"><i class="fas fa-thumbs-down"></i></span>
										</div>
									</div>
									<div class="webtoon_score_content"><textarea id="webtoon_score_area"></textarea></div>
									<div class="webtoon_score_btn">등록하기</div>
								</div>
							</div>
						</c:if>
						<div class="txt_box_wrap">
							<div id="txt_box">내용을 입력해 주세요</div>
						</div>
					</div>
					
					<form id="frm_webtoon_review">
						<input type="hidden" name="titleId" value ="${wDto.titleId}">
						<input type="hidden" name ="sid" value ="${sessionScope.loginUser.id}">
						<input type="hidden" name="scontent" id="scontent">
						<input type="hidden" name="sgood" id="sgood" value="">
					</form>
						
					
					
					
					
					
					
					
					
					
					
					
					
					
					
				</div>
			</div>
		</div>
	</section>
<%@ include file="../include/footer.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		score_list();
		starRating("${wDto.innerrating}", 0);
		starRating("${wDto.rating}", 1);
		
		$('.webtoon_info_style').eq(0).css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
		
		$('.webtoon_info_style').eq(0).click(function(){
			$('.webtoon_score_page').css("display", "flex");
			$('.webtoon_info_view').css("display", "none");
			$('.other_work').css("display", "none");
		});
		
		$('.webtoon_info_style').eq(1).click(function(){
			$('.webtoon_score_page').css("display", "none");
			$('.webtoon_info_view').css("display", "table");
			$('.other_work').css("display", "none");
		});
		
		$('.webtoon_info_style').eq(2).click(function(){
			$('.webtoon_score_page').css("display", "none");
			$('.webtoon_info_view').css("display", "none");
			$('.other_work').css("display", "block");
		});
		
		$('.webtoon_info_style').click(function(){
			$('.webtoon_info_style').css("background", "none").css("border", "1px solid #d5d5d5").css("color", "#d5d5d5");
			$(this).css("background", "#FF6C36").css("border", "1px solid #FF6C36").css("color", "white");
		});
		
		var score_check = false;
		var good_flag = 0;
		$('.webtoon_good').click(function(){
			if(good_flag == 0) {
				$('.webtoon_good i').css("color", "dodgerblue");
				good_flag = 1;
				score_check = true;
				
			} else if(good_flag == 1) {
				$('.webtoon_good i').css("color", "d5d5d5");
				good_flag = 0;
				score_check = false;
			}
			$('.webtoon_hate i').css("color", "d5d5d5");
			hate_flag = 0;
			
		});
		
		var hate_flag = 0;
		$('.webtoon_hate').click(function(){
			if(hate_flag == 0) {
				$('.webtoon_hate i').css("color", "#FF4848");
				hate_flag = 1;
				score_check = true;
			} else if(hate_flag == 1) {
				$('.webtoon_hate i').css("color", "d5d5d5");
				hate_flag = 0;
				score_check = false;
			}
			$('.webtoon_good i').css("color", "d5d5d5");
			good_flag = 0;
		});
		
		
		// 공백과 좋아요/싫어요 필수 유효성 체크
		$('.webtoon_score_btn').click(function(){
			var content = $("#webtoon_score_area").val();
			if(content == null || content.length == 0) { 
				// 유효성체크(Null 체크)
				$("#webtoon_score_area").focus();
				$("#txt_box").css("display", "inline-block").text("내용을 입력해 주세요");
				return false;
			} else if(!score_check) {
				$("#txt_box").css("display", "inline-block").text("좋아요 또는 싫어요를 체크해 주세요");
				return false;
			}
			$("#txt_box").css("display", "none");
			$("#scontent").val(content);
			if(good_flag == 1){
				$("#sgood").val("good");
			} else if(hate_flag == 1) {
				$("#sgood").val("hate");
			}
			
			
			$.ajax({ 
				type:"get",
				url: "${path}/score/create",
				data: $("#frm_webtoon_review").serialize(),
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				success: function(data){
					$("#webtoon_score_area").val("");
					$('.webtoon_good i').css("color", "d5d5d5");
					$('.webtoon_hate i').css("color", "d5d5d5");
					if(data == 0) { // data 값이 0 이면 등록 실패
						$("#txt_box").css("display", "inline-block").text("이미 해당 웹툰을 평가 해주셨습니다. 일주일마다 재등록 가능합니다");
					}
					score_list();
				},
				error: function(){
				}
			});
		});
		
		$(".search_content").keyup(function(e){
			var keyword = $(this).val().trim();
			search(keyword);
		});
		
		$(".search_content").focus(function(e){
			var keyword = $(this).val().trim();
			search(keyword);
		});
	}); 
	
	// 자동완성 기능이 있는 검색 함수
	function search(keyword){
		var search_html = "";
		var title = "";
		if(keyword.length == 0){
			$("#search_result").css('display','none');
		}
		$.ajax({
			type: "get",
			url: "${path}/score/search",
			data : "keyword="+keyword,
			success:function(data){
				data.forEach(function(wDto){
					title = wDto.titleName;
					title = title.replace(keyword,'<i style="color: orange; font-style : normal">'+keyword+'</i>');
					var linkURL = '${path }/score/webtoon?titleId='+wDto.titleId;
					search_html = search_html+'<div><a href="'+linkURL+'"><img src="${path }/resources/img/'+wDto.platForm+'_Webtoon_logo.png"><span>'+title+'</span> </a></div>';
				});
				if(data.length != 0){
					$("#search_result").css('display','block');
					$("#search_result").html(search_html);
				}
			}
		});
	}
	
	// 평가 댓글 띄우는 함수
	function score_list(){
		$.ajax({
			type:"get",
			url: "${path}/score/list",
			data: "titleId=${wDto.titleId}",
			success: function(result){ 
				$('#scoreList').html(result);
			}
		});
	}
	
	function starRating(rating, num){
		var starscore = '';
		for (var i = 0; i < 10; i++) {
			starscore = '';
			if(rating > 0){
				var j = 0;
				while (j <= rating) {
					j += 2;
					if(rating<j){starscore = starscore+'<i class="fas fa-star-half-alt"></i>';}
					else{starscore = starscore+'<i class="fas fa-star"></i>';}
				}
			}
			$('.star_score').eq(num).html(starscore);
		}
	}
</script>
</body>
</html>