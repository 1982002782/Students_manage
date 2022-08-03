package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Talk;
import service.TalkService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class TalkController {
	@Autowired
	private TalkService talkService;
	
	@RequestMapping("queryAllTalks.do") 
	public String queryAllTalks(Model model) {
		List<Talk> talks = talkService.queryAllTalks();
		model.addAttribute("talks", talks);
		return "talk";
	}
	
}
