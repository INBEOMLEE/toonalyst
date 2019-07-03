package test;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class test {
	public static void main(String[] args) {
		
		try {
			
			// 해당 URL 주소로 접속 ( 카카오 페이지 )
			Document doc = Jsoup.connect("https://page.kakao.com/main?categoryUid=10&subCategoryUid=1000").get();
			
			// 웹툰 제목 파싱 (1위 ~ 8위)
			Elements rank = doc.select("p.jsx-2782279146");
			for (Element element : rank) {
				System.out.println(element.text());
			}
			
			// 웹툰 이미지 파싱 (1위 ~ 8위)
			Elements img = doc.select("div.container img");
			for (Element element : img) {
				System.out.println(element.attr("data-src"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
