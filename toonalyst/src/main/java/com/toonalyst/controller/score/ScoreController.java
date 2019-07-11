package com.toonalyst.controller.score;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.score.ScoreDTO;
import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.score.ScoreService;
import com.toonalyst.service.webtoon.RankService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/score/*")
public class ScoreController {

	@Inject
	private ScoreService service;
	
	@Inject
	private RankService rService;
	
	// 페이지 출력
	@RequestMapping(value="/webtoon", method=RequestMethod.GET)
	public String webtoon(Model model) {
		log.info(">>>>> 사이트 소개 페이지 출력");
		List<WebtoonDTO> list = rService.naver();
		
		WebtoonDTO wDto = list.get(0);
		model.addAttribute("wDto", wDto);
		return "score/webtoon";
	}
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String listAll(long titleid, Model model) {
		log.info(">>>>> 평가글 목록 출력");
		
		List<ScoreDTO> list = service.listAll(titleid);
		model.addAttribute("list", list);
		
		return "score/score_list";
	}
	
	@ResponseBody
	@RequestMapping(value="review", method=RequestMethod.GET)
	public void review(ScoreDTO sDto) {
		log.info(">>>>> 웹툰 리뷰 등록 기능 구현");
		log.info(sDto.toString());
		service.create(sDto);
	}
	
	
}
