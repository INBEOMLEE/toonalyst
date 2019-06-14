package com.toonalyst.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.webtoon.WebtoonService;

import lombok.extern.slf4j.Slf4j;
import test.webNaverParser;

@Controller
@Slf4j
public class IndexController {
	
	@RequestMapping("/")
	public String index() {
		log.info(">>>>> 인덱스 페이지 출력");
		return "index";
	}
	
	@Inject
	WebtoonService service;
	
	@Transactional	
	@RequestMapping("/naverupdate")
	public String naverUpdate(Model model) throws IOException {
		List<WebtoonDTO> list = new webNaverParser().getAlltoonList();
		for (WebtoonDTO webtoonDTO : list) {
			if(service.selectone(webtoonDTO.getTitleId())==null) {
				service.create(webtoonDTO);
			}
		}
		model.addAttribute("list",list);
		return "updateresult";
	}
}
