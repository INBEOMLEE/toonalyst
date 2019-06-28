<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style type="text/css">

	*{
		margin: 0;
	    padding: 0;
	}
	footer *{
		margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    color: #333;
	    font-family: 'Noto Sans KR',Malgun Gothic, '맑은 고딕', AppleGothic, Dotum, '돋움', sans-serif;
	    font-size: 12px;
	    line-height: 1.6;
	    vertical-align: baseline;
	}
	footer ol, ul, li{
		list-style: none;
	}
	footer a, a:hover, a:active, a:focus{
		text-decoration: none;
   		cursor: pointer;
	}
	.footer_info{
		background: #f6f6f6;
		text-align: center;
	}
	.footer_info_menu{
		border: 1px solid #ebebeb;
	    border-width: 1px 0;
    }
	.footer_wrap_inner{
		width: 1180px;
    	margin: 0 auto;
    	display: flex;
    	justify-content: center;
    	align-content: center;
	}
	.footer_wrap_inner li{
		float: left;
   		padding: 0 5px;
	}
	.footer_wrap_inner li a{
		display: block;
	    height: 48px;
	    font-size: 13px;
	    line-height: 52px;
	}
	.footer_info_menu:after{
		display: block;
	    clear: both;
	    content: '';
	}
	.toonalyst_info{
		clear: both;
    	padding: 23px 6px 26px;
	}
	.toonalyst_info address span{
		padding-right: 6px;
	    color: #aaa;
	    font-size: 12px;
	    line-height: inherit;
	}
	footer address{
		font-style: normal;
	}
	.copyright{
		padding-top: 22px;
    	color: #3a3a3a;
    	font-size: 13px;
	}
</style>
<footer>
	<div class="footer_info">
		<div class="footer_info_menu">
			<ul class="footer_wrap_inner">
				<li><a href="${path}/introduction">이용안내 및 이용약관</a></li>	
				<li><a href="#">/</a></li>			
				<li><a href="${path}/introduction">개인정보처리방침</a></li>
			</ul>
		</div>
		<div class="footer_wrap_inner">
			<div class="toonalyst_info">
				<address>
					<span>상호. TOONALYST</span>|
					<span>대표. 유수지</span>|
					<span>이메일. hello@toonalyst.com</span>|
					<span>주소. 광주광역시 북구 중흥1동 경양로 170 한경빌딩 5층</span><br>
					<span>사업자등록번호. 000-11-22334 (사업자정보확인)</span>|
					<span>발행인. 이인범</span>|
					<span>편집인. 조기훈</span>|
					<span>정보보호책임자. 최인준</span><br>
					<span>Toonalyst의 콘텐츠 및 기사는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다</span>
				</address>
				<p class="copyright"><strong>(c)(주)TOONALYST</strong></p>
			</div>
		</div>
	</div>
</footer>