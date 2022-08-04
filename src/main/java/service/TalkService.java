package service;

import java.util.List;
import pojo.Talk;

public interface TalkService {
	
	public List<Talk> queryAllTalks();
	
	public List<Talk> queryAllTalksBySno(String Sno);
}
