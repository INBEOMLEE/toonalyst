package com.toonalyst.controller.score;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toonalyst.domain.score.ScoreDTO;
import com.toonalyst.domain.webtoon.WebtoonDTO;
import com.toonalyst.service.score.ScoreService;
import com.toonalyst.service.webtoon.RankService;
import com.toonalyst.service.webtoon.WebtoonService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/score/*")
public class ScoreController {

	@Inject
	private ScoreService service;
	
	@Inject
	private RankService rService;
	
	@Inject
	private WebtoonService wService;
	// 페이지 출력
	
	@RequestMapping(value="/webtoon", method=RequestMethod.GET)
	public String webtoon(@RequestParam(defaultValue = "0") long titleId, Model model) {
		log.info(">>>>> 사이트 소개 페이지 출력");
		WebtoonDTO wDto = null;
		if(titleId !=0){
			wDto = wService.selectone(titleId);
		}
		if(wDto == null) {
			List<WebtoonDTO> list = rService.naver();
			wDto = list.get(0);
		}
		model.addAttribute("wDto", wDto);
		return "score/webtoon";
	}
	
	@ResponseBody
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public List<WebtoonDTO> search(String keyword) {
		log.info("검색어 >>>>> "+keyword);
		return wService.selectList(keyword);
	}
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String list(long titleId, Model model) {
		log.info(">>>>> 평가글 목록 출력");
		List<ScoreDTO> list = service.list(titleId);
		model.addAttribute("list", list);
		
		return "score/score_list";
	}
	
	@Transactional
	@ResponseBody
	@RequestMapping(value="create", method=RequestMethod.GET)
	public int create(ScoreDTO sDto) {
		log.info(">>>>> 웹툰 리뷰 등록 기능 구현");
		int result = service.create(sDto);
		wService.ratingUpdate(service.scoreOne(sDto.getTitleId()));
		return result;
	}

	@ResponseBody
	@RequestMapping(value="scoreMap", method = RequestMethod.GET)
	public HashMap<String, Object> scoreMap(long titleId){
		return service.scoreOne(titleId);
	}
	
	@ResponseBody
	@RequestMapping(value = "scoreChart", method = RequestMethod.GET)
	public List<HashMap<String, Object>> scoreChart(long titleId){
		return service.scoreChart(titleId);
	}
	
	@ResponseBody
	@RequestMapping(value = "scoreCheck", method = RequestMethod.GET)
	public HashMap<String, String> scoreCheck(long titleId){
		HashMap<String, String> map = service.scoreCheck(titleId);
		return map;
	}
	
	
}
