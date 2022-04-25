package com.myproject.greatpark.controller.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.greatpark.model.notice.NoticeDAO;
import com.myproject.greatpark.model.notice.NoticeDTO;
import com.myproject.greatpark.service.board.PageUtil;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	@Inject
	NoticeDAO noticeDao;
	
	@RequestMapping("write.do")
	public String write() {
		return"notice/write";
	}
	
	@RequestMapping("insert.do")
	public String insert(NoticeDTO dto, HttpSession session){
		String adminid = (String)session.getAttribute("adminid");
		dto.setAdminid(adminid);
		noticeDao.insert(dto);
		return "redirect:/notice/list.do";
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(@RequestParam(defaultValue="1") int curPage,
							 @RequestParam(defaultValue="all") String search_option,
							 @RequestParam(defaultValue="") String keyword)
	{
		int count = noticeDao.count(search_option, keyword);
		PageUtil page_info = new PageUtil(count,curPage);
		int start = page_info.getPageBegin();
		int end = page_info.getPageEnd();
		List<NoticeDTO>list = noticeDao.list(start, end, search_option, keyword);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/list");
		Map<String,Object>map = new HashMap<>();
		map.put("list",list);
		map.put("count",count);
		map.put("search_option",search_option);
		map.put("keyword",keyword);
		map.put("page_info",page_info);
		mav.addObject("map",map);
		return mav;
	}
	
	@RequestMapping("detail.do")
	public ModelAndView detail(int num,int cur_page,String search_option,String keyword) {
		noticeDao.increase_hit(num);//조회수증가처리
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/view");
		mav.addObject("dto",noticeDao.detail(num));
		mav.addObject("cur_page",cur_page);
		mav.addObject("search_option",search_option);
		mav.addObject("keyword",keyword);
		return mav;
	}
	
	@RequestMapping("update.do")
	public String update(NoticeDTO dto){
		noticeDao.update(dto);
		return "redirect:/notice/list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int num){
		noticeDao.delete(num);
		return "redirect:/notice/list.do";
	}
}
