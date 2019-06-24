package com.toonalyst.scheduler;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.webtoon.WebtoonService;
import com.toonalyst.service.webtoon.WebtoonServiceImpl;

import lombok.extern.slf4j.Slf4j;
import test.webNaverParser;

@Slf4j
@Component
public class Scheduler {

	@Inject 
	WebtoonService service;
	
	// 0초 0분 12시 매일
	@Transactional
	@Scheduled(cron = "0 23 15 * * *")
	public void cronTest() throws IOException {
		List<WebtoonDTO> list = new webNaverParser().getAlltoonList();
		/* WebtoonService service = new WebtoonServiceImpl(); */
		for (WebtoonDTO webtoonDTO : list) {
			if (service.selectone(webtoonDTO.getTitleId()) == null) {
				service.create(webtoonDTO);
			}
		}
	}

}