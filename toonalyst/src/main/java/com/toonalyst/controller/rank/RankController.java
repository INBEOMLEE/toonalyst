package com.toonalyst.controller.rank;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.rank.RankService;

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
}