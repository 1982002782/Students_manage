package dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Talk;

public interface TalkDao {
	//查询所有的谈话记录
	public List<Talk> queryAllTalks();   
	//查询指定学号的学生谈话记录
	public List<Talk> queryAllTalksBySno(String Sno);   
	//添加谈话记录
	public int addTalk(@Param("Sno")String Sno,@Param("number")String number,@Param("content")String content,@Param("date")Date date);  

}
