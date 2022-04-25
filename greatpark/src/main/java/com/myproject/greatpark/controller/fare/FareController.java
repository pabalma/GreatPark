package com.myproject.greatpark.controller.fare;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.greatpark.model.reservation.FareDAO;
import com.myproject.greatpark.model.reservation.FareDTO;

@Controller
@RequestMapping("/fare/*")
public class FareController {

	@Inject
	FareDAO fareDao;
	
	@RequestMapping("detail.do")
	public ModelAndView detail(int code) {
		ModelAndView mav = new ModelAndView();
		FareDTO dto = fareDao.detail(code);
		mav.setViewName("fare/detail");
		mav.addObject("dto" ,dto);
		return mav;
	}
	
	@RequestMapping("delete.do")
	public String delete(int code) {
		fareDao.delete(code);
		return "redirect:/reservation/manage.do";
	}
	
	@RequestMapping("write.do")
	public String write() {
		return "fare/write";
	}
	
	@RequestMapping("insert.do")
	public String insert(FareDTO dto) {
		fareDao.insert(dto);
		return "redirect:/reservation/manage.do";
	}
	
	@RequestMapping("update.do")
	public String update(FareDTO dto) {
		fareDao.update(dto);
		return "redirect:/reservation/manage.do";
	}
}
