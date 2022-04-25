package com.myproject.greatpark.model.notice;

import java.util.List;

public interface NoticeDAO {
	void insert(NoticeDTO dto);
	NoticeDTO detail(int num);
	void update(NoticeDTO dto);
	void delete(int num);
	List<NoticeDTO> list(int start,int end,String search_option,String keyword);
	void increase_hit(int num);
	int count(String search_option, String keyword);
}
