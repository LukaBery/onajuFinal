package com.myspring.Onaju.common.error;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("errorController")
public class ErrorSettingController {
	
	@RequestMapping("/error404.do")
	public String Error404(HttpServletResponse res, Model model) {
		model.addAttribute("code", "ERROR_404");
		return "error/404";
	}
	@RequestMapping("/error500.do")
	public String Error500(HttpServletResponse res, Model model) {
		model.addAttribute("code", "ERROR_404");
		return "error/500";
	}
	
	

}
