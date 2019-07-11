package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.toonalyst.domain.webtoon.WebtoonDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

/*
 * webParser.java
 * 최초 작성 :19.06.11 최인준
 * 파싱기능 작성 및 테스트
 * https://comic.naver.com/webtoon/genre.nhn?genre=(장르명)
 * 해당 url의 genre 매개변수에 따라 해당 장르 웹툰 파싱 가능
 * 전체 파싱 리스트는 alltoonList에 누적되며
 * 중복된 내용 처리는 현재 구현중
 * 
 * 테스트시 JUnit으로 테스트 할것
 * 마지막 수정 : 19.06.13 최인준 
 */

@Slf4j
public class webNaverParser {
	List<WebtoonDTO> dailylist;
	List<WebtoonDTO> comiclist;
	List<WebtoonDTO> fantasylist;
	List<WebtoonDTO> actionlist;
	List<WebtoonDTO> dramalist;
	List<WebtoonDTO> purelist;
	List<WebtoonDTO> sensibilitylist;
	List<WebtoonDTO> thrilllist;
	List<WebtoonDTO> historicallist;
	List<WebtoonDTO> sportslist;
	
	List<WebtoonDTO> episodelist;
	List<WebtoonDTO> omnibuslist;
	List<WebtoonDTO> storylist;

	List<WebtoonDTO> alltoonList;


	public webNaverParser(){
		alltoonList = new ArrayList<WebtoonDTO>();
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
		
		

		
		
//		dailylist = genreList(daily);
//		comiclist = genreList(comic);
//		fantasylist = genreList(fantasy);
//		actionlist = genreList(action);
//		dramalist = genreList(drama);
//		purelist = genreList(pure);
//		sensibilitylist = genreList(sensibility);
//		thrilllist = genreList(thrill);
//		historicallist = genreList(historical);
//		sportslist = genreList(sports);
		
		
	}
	public List<WebtoonDTO> getAlltoonList(){
		String url = "https://comic.naver.com/webtoon/genre.nhn?genre=";
		//스토리 진행 방식에 따른 장르
		String episode = url+"episode";			//에피소드
		String omnibus = url+"omnibus";			//옵니버스
		String story = url+"story";				//스토리

		episodelist = genreList(episode);
		omnibuslist = genreList(omnibus);
		storylist = genreList(story);
		
		return alltoonList;
	}
	
	public List<WebtoonDTO> genreList(String genre){
		List<WebtoonDTO> toonlist = new ArrayList<WebtoonDTO>();
		String platForm = "naver";
		Document doc;
		try {
			doc = Jsoup.connect(genre).get();
			Document doc2 = null;
			Elements list = doc.select(".img_list > li");
			for (Element element : list) {
				int titleId = Integer.parseInt(element.select(".thumb > a").attr("href").split("=")[1]);
				String titleName = element.select(".thumb > a").attr("title");
				String writer = element.select(".desc > a").text();
				float rating = Float.parseFloat(element.select(".rating_type > strong").text());
				float innerrating = 0;
				int finish = 0;
				if(element.select(".thumb > a > img").hasClass("finish")){
					finish = 1;
				}
				//String bannerImg = element.select(".thumb > a > img").attr("src");
				doc2 = Jsoup.connect("https://comic.naver.com/webtoon/detail.nhn?titleId="+titleId+"&no=0").get();
				String bannerImg = doc2.select(".thumb > a > img").attr("src");
				WebtoonDTO webtemp = new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish, bannerImg);
				toonlist.add(webtemp);
				if(genre.contains("episode")) {
					alltoonList.add(webtemp);
				}
				if(genre.contains("omnibus")) {
					alltoonList.add(webtemp);
				}
				if(genre.contains("story")) {
					alltoonList.add(webtemp);
				}
				log.info(webtemp.getTitleName()+" - 파싱 완료");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return toonlist;
	}
	
	public List<Integer> getRankList(){
		List<Integer> idList = new ArrayList<Integer>();
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
					idList.add(Integer.parseInt(rank1));
				}
				rank1 = list.select(".rank10 > a").attr("href").split("&no")[0].split("=")[1];
				idList.add(Integer.parseInt(rank1));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return idList;
	}
	
}
