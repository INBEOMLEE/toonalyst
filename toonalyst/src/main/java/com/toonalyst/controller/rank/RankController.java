package com.toonalyst.controller.rank;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.webtoon.RankService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/rank/*")
public class RankController {
	
	@Inject
	private RankService service;
	
	@ResponseBody
	@RequestMapping(value = "naver", method = RequestMethod.GET)
	public List<WebtoonDTO> naverRank(){
		return service.naver();		
	}
	
	@ResponseBody
	@RequestMapping(value = "lezhin", method = RequestMethod.GET)
	public List<WebtoonDTO> lezhinRank(){
		return service.lezhin();		
	}
	
	@ResponseBody
	@RequestMapping(value = "daum", method = RequestMethod.GET)
	public List<WebtoonDTO> daumRank(){
		return service.daum();		
	}
	
	@ResponseBody
	@RequestMapping(value = "kakao", method = RequestMethod.GET)
	public List<WebtoonDTO> kakaoRank(){
		return service.kakao();		
	}
}
