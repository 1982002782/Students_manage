package service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Talk;

public interface TalkService {
	
	public List<Talk> queryAllTalks();
	
	public List<Talk> queryAllTalksBySno(String Sno);
	
	public int addTalk(@Param("Sno")String Sno,@Param("number")String number,@Param("content")String content,@Param("date")Date date);
}
