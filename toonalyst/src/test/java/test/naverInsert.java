package test;

import java.io.IOException;
import java.util.List;

import org.junit.Test;
import com.toonalyst.domain.webtoon.WebtoonDTO;

public class naverInsert {
	
	@Test
	public void naverInsertAll() throws IOException {
//		webNaverParser naver = new webNaverParser();
//		List<WebtoonDTO> list = naver.getAlltoonList();
//		for (WebtoonDTO webtoonDTO : list) {
//			System.out.println(webtoonDTO.toString());
//		}
//		System.out.println(list.size());
//		Document doc = Jsoup.connect("https://www.lezhin.com/ko/adultkind?path=%2Fko%2Ftop100&sw=kid").get();
//		System.out.println(doc.text());
//		Calendar cal = null;
//		Calendar today = Calendar.getInstance();
//		String calstr = "";
//		String todaystr = today.get(Calendar.YEAR)+""+today.get(Calendar.MONTH)+today.get(Calendar.DATE);
//		
//		if(cal != null) {
//			calstr = cal.get(Calendar.YEAR)+""+cal.get(Calendar.MONTH)+cal.get(Calendar.DATE);
//		}
//		System.out.println(todaystr);
		List<WebtoonDTO> list = new webLezhinSelenium().getAlltoonList();
		for (WebtoonDTO webtoonDTO : list) {
			System.out.println(webtoonDTO.toString());
		}
	}
}
