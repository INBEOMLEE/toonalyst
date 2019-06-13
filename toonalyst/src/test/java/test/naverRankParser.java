package test;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;

import com.toonalyst.domain.webtoon.WebtoonDTO;

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

public class naverRankParser {
	@Test
	public void naverRank() throws IOException {
		webNaverParser allnavertoon = new webNaverParser();
		Document doc = Jsoup.connect("https://comic.naver.com/webtoon/weekdayList.nhn?week=").get();
		Elements list = doc.select("#realTimeRankFavorite");
		String rank1 = "";
		ArrayList<WebtoonDTO> ranklist = new ArrayList<WebtoonDTO>();
		WebtoonDTO webDto = new WebtoonDTO();
		for (int i = 1; i < 10; i++) {
			rank1 = list.select(".rank0"+i+" > a").text().split("-")[0];
			for(WebtoonDTO webtoonDTO :allnavertoon.getAlltoonList()) {
				if(webtoonDTO.getTitleName().equals(rank1)) {
					System.out.println("발견");
					webDto = webtoonDTO;
					break;
				}
			}
			ranklist.add(webDto);
		}
		rank1 = list.select(".rank10 > a").text().split("-")[0];
		System.out.println(rank1);
		for(WebtoonDTO webtoonDTO :allnavertoon.getAlltoonList()) {
			if(webtoonDTO.getTitleName().equals(rank1)) {
				System.out.println("발견");
				webDto = webtoonDTO;
				ranklist.add(webDto);
				break;
			}
		}
		for (WebtoonDTO webtoonDTO : ranklist) {
			System.out.println(webtoonDTO.toString());
		}
	}
}
