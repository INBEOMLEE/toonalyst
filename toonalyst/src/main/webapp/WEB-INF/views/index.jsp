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
		border: 1px solid red;
		position: relative;
		
	}
	.rank_naver {
		width: 2680px;
		height: 350px;
		overflow: auto;
		position: absolute;
	}
	.rank_naver div {
		border: 1px solid blue;
		width: 250px;
		height: 350px;
		display: inline-block;
		position: relative;
		margin-right: 10px;
	}
	#empty_box {
		width: 1px;
		height: 500px;
		border: 1px solid black;
		margin: 0;
		opacity: 1;
	}
	.rank_content {
		position: relative;
		width: 1140px;
		height: 350px;
		margin: 20px auto;
		border: 1px solid red;
		overflow: hidden;
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
							<div class="naver_toon">1</div>
							<div class="naver_toon">2</div>
							<div class="naver_toon">3</div>
							<div class="naver_toon">4</div>
							<div class="naver_toon">5</div>
							<div class="naver_toon">6</div>
							<div class="naver_toon">7</div>
							<div class="naver_toon">8</div>
							<div class="naver_toon">9</div>
							<div class="naver_toon">10</div>
							<div id="empty_box">1</div>
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
			if(scrollValue > 0) {
				$('.rank_naver div').css('top', scrollValue+'px').css('left', -scrollValue+'px');
			} else {
				$('.rank_naver div').css('top', '0').css('left', '0');
			}
			if(scrollValue >= 1500) {
				$('.rank_naver div').css('top', scrollValue+'px').css('left', '-1492px');
			}
		});
	});
	
</script>
</body>
</html>