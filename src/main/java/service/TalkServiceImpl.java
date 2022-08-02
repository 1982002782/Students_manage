package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TalkDao;
import pojo.Talk;
@Service
/* 作为中转层将dao层返回的数据传到控制层*/
public class TalkServiceImpl implements TalkService {
	@Autowired
	private TalkDao talkDao;
	public List<Talk> queryAllTalks() {
		// TODO Auto-generated method stub
		return this.talkDao.queryAllTalks();
	}

}
