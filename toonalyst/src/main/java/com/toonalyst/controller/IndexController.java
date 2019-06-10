package com.toonalyst.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class IndexController {
	
	@RequestMapping("/")
	public String index() {
		log.info(">>>>> 인덱스 페이지 출력");
		return "index";
	}
	
}
