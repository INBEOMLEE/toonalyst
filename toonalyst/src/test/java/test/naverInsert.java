package test;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.persistence.webtoon.WebtoonDAO;

public class naverInsert {
	@Inject
	WebtoonDAO wDao;
	
	@Test
	@Transactional
	public void naverInsertAll() throws IOException {
		webNaverParser naver = new webNaverParser();
		List<WebtoonDTO> list = naver.getAllWebToonList();
		System.out.println(list.size());
		for (WebtoonDTO webtoonDTO : list) {
			System.out.println(webtoonDTO.getTitleId()+" "+webtoonDTO.getTitleName());
		}
	}
}
