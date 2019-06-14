package test;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

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
	@Transactional
	public void naverInsertAll() throws IOException {
		webNaverParser naver = new webNaverParser();
		List<WebtoonDTO> list = naver.getAlltoonList();
		System.out.println(list.size());
		for (WebtoonDTO webtoonDTO : list) {
			System.out.println(mDao.toString());
		}
	}
}
