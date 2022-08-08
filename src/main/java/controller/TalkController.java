package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Talk;
import service.TalkService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class TalkController {
	@Autowired
	private TalkService talkService;
	
	@RequestMapping("queryAllTalks.do") 
	public String queryAllTalks(Model model) {
		//获取数据库内的所有谈话记录
		List<Talk> talks = talkService.queryAllTalks();
		//将获取到的数据传到前台
		//双引号内的talks作为一个名字，用于调用
		model.addAttribute("talks", talks); 
		return "talk";
	}
	
	@RequestMapping("queryAllTalksBySno.do")
	public String queryAllTalksBySno(String Sno,Model model) {
		List<Talk> talks = talkService.queryAllTalksBySno(Sno);
		model.addAttribute("talks", talks);
		return "student";
	}
	
	@RequestMapping("addTalk.do")
	public String addTalk(Model model,@RequestParam("Sno")String Sno,@RequestParam("number")String number,@RequestParam("content")String content,@RequestParam("date")String date) throws ParseException{
		List<Talk> talks = talkService.queryAllTalks();
		//将字符串形式的日期转化为Date型，便于插入数据库
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date newdate = sdf.parse(date);  
		
		int j=0; 
		
		//遍历数据库内的学生信息，如果要插入的学号不存在，进行提示
		for(Talk t:talks) {  
			if(Sno.equals(t.getStudent().getSno())) {
				j=1;
			}
		}
		if(j==0) {
			model.addAttribute("msg", "学生学号不存在");
			
		}
		return null;
	}
	
}
