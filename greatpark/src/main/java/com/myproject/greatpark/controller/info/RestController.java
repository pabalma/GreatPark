package com.myproject.greatpark.controller.info;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myproject.greatpark.model.info.RestDAO;
import com.myproject.greatpark.model.info.RestDTO;

@Controller
@RequestMapping("/info/*")
public class RestController {

	@Inject
	RestDAO restDao;

	@RequestMapping("information.do")
	public String info() {
		return "info/information";
	}
	
	@RequestMapping("foodcort.do")
	public String restList(Model model) {
		List<RestDTO> list = restDao.list();
		model.addAttribute("foodcort", list);
		return "info/foodcort";
	}

	@RequestMapping("list.do")
	public String list() {
		return "info/list";
	}
}