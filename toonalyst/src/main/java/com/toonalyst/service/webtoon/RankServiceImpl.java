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

import test.webNaverParser;

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
	
	@Transactional
	public List<WebtoonDTO> naver() {
		ArrayList<WebtoonDTO> ranklist = new ArrayList<WebtoonDTO>();
		try {
			Document doc = Jsoup.connect("https://comic.naver.com/webtoon/weekdayList.nhn?week=").get();
			Elements list = doc.select("#realTimeRankFavorite");
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

}
