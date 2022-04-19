package com.myproject.greatpark.controller.reservation;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myproject.greatpark.model.reservation.FareDAO;
import com.myproject.greatpark.model.reservation.FareDTO;
import com.myproject.greatpark.model.reservation.ParkingDAO;
import com.myproject.greatpark.model.reservation.ParkingDTO;
import com.myproject.greatpark.model.reservation.ReservationDAO;
import com.myproject.greatpark.model.reservation.ReservationDTO;
import com.myproject.greatpark.model.user.UserDAO;



@Controller
@RequestMapping("/reservation/*")
public class ReservationController {
	
	@Inject
	ReservationDAO reservationDao;
	
	@Inject
	ParkingDAO parkingDao;
	
	@Inject
	FareDAO fareDao;
	
	@Inject
	UserDAO userDao;
	
	@RequestMapping("list.do")
	public String list(HttpSession session, Model model) {
		if(session.getAttribute("userid") == null) return "user/login";
		String userid = session.getAttribute("userid").toString();
		List<ReservationDTO> list = reservationDao.list(userid);
		model.addAttribute("list", list);
		return "reservation/list";
	}
	
	@RequestMapping("write.do")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		List<ParkingDTO> parking_list = parkingDao.list();
		List<FareDTO> fare_list = fareDao.list();
		mav.setViewName("reservation/write");
		mav.addObject("parking_list", parking_list);
		mav.addObject("fare_list", fare_list);
		return mav;
	}
	
	@RequestMapping("insert.do")
	public String insert(ReservationDTO dto, HttpSession session, @DateTimeFormat(pattern="yyyy-MM-dd")Date date, @RequestParam(defaultValue = "0") int type_amount) {
		if(dto.getAmount() == 0) dto.setAmount(type_amount);
		String userid = session.getAttribute("userid").toString();
		dto.setUserid(userid);
		dto.setBooking_date(date);
		reservationDao.insert(dto);
		return "redirect:/reservation/list.do";
	}
	
	@RequestMapping("delete_all.do")
	public String delete_all(HttpSession session) {
		String userid = session.getAttribute("userid").toString();
		reservationDao.delete_all(userid);
		return "redirect:/reservation/list.do";
	}
	
	@RequestMapping("delete.do")
	public String delete(int idx) {
		reservationDao.delete(idx);
		return "redirect:/reservation/list.do";
	}
}
