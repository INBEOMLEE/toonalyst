package com.toonalyst.service.webtoon;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.persistence.webtoon.WebtoonDAO;

import test.webDaumParser;
import test.webLezhinSelenium;

/*
 * 최초 작성 :19.06.13 최인준
 * 파싱한 장르별 전체 웹툰과 랭킹정보를 파싱하여 10위까지 랭크 리스트 반환
 * 현재 네이버에 신작은 장르분류를 늦게 하는 경우가 있어
 * 장르 분류가 아직 이루어지지 않은 웹툰이 랭크에 있는 경우
 * 해당 웹툰 정보를 제대로 파싱하지 못하는 버그가 있음
 * 현재 수정중
 * 
 * 마지막 수정 : 19.06.13 최인준 
 */

@Service
public class RankServiceImpl implements RankService {

	@Inject
	public WebtoonDAO wDao;
	
	@Override
	@Transactional
	public List<WebtoonDTO> naver() {
		ArrayList<WebtoonDTO> ranklist = new ArrayList<WebtoonDTO>();
		// 주로 I/O에서 예외가 발생하는데 그 상황에 처리하기 위해서 try ~ catch사용
		try { // jsoup에서 사용한다. 각종 예외상황에 대해서 예외발생해도 프로그램 종료안되고 대처하기 위해서 사용함
			// java외의 문제 가능성이 있을 때 자바에서 try~catch를 강제한다. connect의 주소가 없는 경우 등
			Document doc = Jsoup.connect("https://comic.naver.com/webtoon/weekdayList.nhn?week=").get(); // jsoup의 connect()를 이용해서 get 방식으로 접속 html 문서가 넘어옴
			Elements list = doc.select("#realTimeRankFavorite"); // 랭킹부분 파싱
			String rank1 = ""; 
			WebtoonDTO webDto = new WebtoonDTO();
			for (int i = 1; i < 10; i++) {
				rank1 = list.select(".rank0"+i+" > a").attr("href").split("&no")[0].split("=")[1];
				System.out.println(rank1);
				ranklist.add(wDao.selectone(Integer.parseInt(rank1)));
			}
			rank1 = list.select(".rank10 > a").attr("href").split("&no")[0].split("=")[1];
			ranklist.add(wDao.selectone(Integer.parseInt(rank1)));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ranklist;
	}

	@Override
	public List<WebtoonDTO> lezhin() {
		return new webLezhinSelenium().getRankList();
	}

	@Override
	public List<WebtoonDTO> daum() {
		return new webDaumParser().getRankList();
	}

}
