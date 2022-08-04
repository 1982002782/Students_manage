package service;

import java.util.List;

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

}
