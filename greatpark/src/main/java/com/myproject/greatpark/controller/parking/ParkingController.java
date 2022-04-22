package com.myproject.greatpark.controller.parking;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.greatpark.model.reservation.ParkingDAO;
import com.myproject.greatpark.model.reservation.ParkingDTO;

@Controller
@RequestMapping("/parking/*")
public class ParkingController {

	@Inject
	ParkingDAO parkingDao;
	
	@RequestMapping("detail.do")
	public ModelAndView detail(String code) {
		ModelAndView mav = new ModelAndView();
		ParkingDTO dto = parkingDao.detail(code);
		mav.setViewName("parking/detail");
		mav.addObject("dto" ,dto);
		return mav;
	}
	
	@RequestMapping("delete.do")
	public String delete(String code) {
		parkingDao.delete(code);
		return "redirect:/reservation/manage.do";
	}
	
	@RequestMapping("write.do")
	public String write() {
		return "parking/write";
	}
	
	@RequestMapping("insert.do")
	public String insert(ParkingDTO dto) {
		parkingDao.insert(dto);
		return "redirect:/reservation/manage.do";
	}
	
	@RequestMapping("update.do")
	public String update(ParkingDTO dto) {
		parkingDao.update(dto);
		return "redirect:/reservation/manage.do";
	}
}
