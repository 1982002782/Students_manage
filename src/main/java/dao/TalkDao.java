package dao;

import java.util.List;

import pojo.Talk;

public interface TalkDao {
	public List<Talk> queryAllTalks(); //查询所有谈话记录，返回到一个对象列表内
	
	public List<Talk> queryAllTalksBySno(String Sno);  //通过学号查询该学生的谈话记录

}
