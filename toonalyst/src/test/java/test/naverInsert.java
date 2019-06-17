package test;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.persistence.member.MemberDAO;
import com.toonalyst.persistence.webtoon.WebtoonDAO;

public class naverInsert {
	@Inject
	WebtoonDAO wDao;
	
	@Inject
	MemberDAO mDao;
	
	@Test
	public void naverInsertAll() throws IOException {
//		webNaverParser naver = new webNaverParser();
//		List<WebtoonDTO> list = naver.getAlltoonList();
//		for (WebtoonDTO webtoonDTO : list) {
//			System.out.println(webtoonDTO.toString());
//		}
//		System.out.println(list.size());
		Document doc = Jsoup.connect("https://www.lezhin.com/ko/adultkind?path=%2Fko%2Ftop100&sw=kid").get();
		System.out.println(doc.text());
	}
}
