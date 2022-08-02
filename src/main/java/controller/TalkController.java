package controller;

import org.springframework.stereotype.Controller;

import service.TalkService;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class TalkController {
	@Autowired
	private TalkService talkService;
	
	
	
}
