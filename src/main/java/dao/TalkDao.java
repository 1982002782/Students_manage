package dao;

import java.util.List;

import pojo.Talk;

public interface TalkDao {
	public List<Talk> queryAllTalks(); //��ѯ����̸����¼�����ص�һ�������б���
	
	public List<Talk> queryAllTalksBySno(String Sno);  //ͨ��ѧ�Ų�ѯ��ѧ����̸����¼

}