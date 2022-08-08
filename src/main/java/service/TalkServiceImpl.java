package service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TalkDao;
import pojo.Talk;
@Service
public class TalkServiceImpl implements TalkService {
	@Autowired
	private TalkDao talkDao;
	public List<Talk> queryAllTalks() {
		// TODO Auto-generated method stub
		return this.talkDao.queryAllTalks();
	}
	
	public List<Talk> queryAllTalksBySno(String Sno){
		return this.talkDao.queryAllTalksBySno(Sno);
	}
	
	public int addTalk(@Param("Sno")String Sno,@Param("number")String number,@Param("content")String content,@Param("date")Date date) {
		return this.talkDao.addTalk(Sno, number, content, date);
	}

}
