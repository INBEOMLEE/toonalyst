package test;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;

/*
 * webParser.java
 * 최초 작성 :19.06.11 최인준
 * 파싱기능 작성 및 테스트
 * https://comic.naver.com/webtoon/genre.nhn?genre=(장르명)
 * 해당 url의 genre 매개변수에 따라 해당 장르 웹툰 파싱 가능
 * 
 * 테스트시 JUnit으로 테스트 할것
 * 마지막 수정 : 19.06.11 최인준 
 */


public class webParser {
	@Test
	public void webparse() throws IOException{
		String url = "https://comic.naver.com/webtoon/genre.nhn?genre=";
		String daily = url+"daily";				//일상
		String comic = url+"comic";				//개그
		String fantasy = url+"fantasy";			//판타지
		String action = url+"action";			//액션
		String drama = url+"drama";				//드라마
		String pure = url+"pure";				//순정
		String sensibility = url+"sensibility";	//감성
		String thrill = url+"thrill";			//스릴러
		String historical = url+"historical";	//시대극
		String sports = url+"sports";			//스포츠
		
		Document doc = Jsoup.connect(daily).get();
		Elements list = doc.select(".img_list > li");
		for (Element element : list) {
			System.out.print(element.select(".thumb > a").attr("href").split("=")[1]+" ");
			System.out.print(element.select(".thumb > a").attr("title")+" ");
			System.out.println(element.select(".thumb > a > img").attr("src"));
		}
	}
}
