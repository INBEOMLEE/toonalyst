package com.toonalyst.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
//		= webNaverParser wnp = new webNaverParser();
//		  List<WebtoonDTO> list = wnp.getAlltoonList();
		
		for (WebtoonDTO webtoonDTO : list) {
			if(service.selectone(webtoonDTO.getTitleId())==null) {
				service.create(webtoonDTO);
			}
		}
		model.addAttribute("list",list);
		return "updateresult";
	}
	
	
	@RequestMapping(value="/introduction", method=RequestMethod.GET)
	public String introduction() {
		log.info(">>>>> 사이트 소개 페이지 출력");
		
		return "/introduction";
	}
	
	@RequestMapping(value="/testpage", method=RequestMethod.GET)
	public String testpage() {
		log.info(">>>>> 사이트 소개 페이지 출력");
		
		return "/testpage";
	}
	
	@RequestMapping(value="/webtoon", method=RequestMethod.GET)
	public String webtoon() {
		log.info(">>>>> 사이트 소개 페이지 출력");
		
		return "/webtoon";
	}
}
