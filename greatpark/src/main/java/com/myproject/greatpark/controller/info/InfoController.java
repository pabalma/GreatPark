package com.myproject.greatpark.controller.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info/*")
public class InfoController {
	@RequestMapping("information.do")
	public String info() {
		return "/info/information";
	}
}
