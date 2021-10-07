package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.Mailer;



@Controller
@RequestMapping("/manage/recruitment")
public class EmailController {
	@Autowired
	Mailer mailer;

	@RequestMapping("update")
	public String index() {
		return "manage/recruitment/update";
	}

	@RequestMapping("send")
	public String send(ModelMap model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("subject") String subject, @RequestParam("body") String body) {
		try {
			// Gửi mail
			mailer.send(from, to, subject, body);
			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			model.addAttribute("message", "Gửi email thất bại !");
		}
		
		return "redirect:/manage/recruitment/update.htm";
	}

}
