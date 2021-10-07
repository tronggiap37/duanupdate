package admin.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.model.Staff;

@Transactional
@Controller
@RequestMapping("/client/")
public class RecruitmentClientController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("recruitment")
	public String index() {
		return "client/recruitment";
	}

	@RequestMapping(value = "recruitment", method = RequestMethod.GET)
	public String createaccount(ModelMap model) {
		model.addAttribute("recruitment", new Staff());
		return "client/recruitment";
	}

	@RequestMapping(value = "recruitment", method = RequestMethod.POST)
	public String create(ModelMap model, @ModelAttribute("recruitment") Staff recruitment) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(recruitment);
			t.commit();
			model.addAttribute("message",
					" <i class=\"fas fa-user-check\" style=\"color: green; font-size: 30px;\"></i>Đã gửi thông tin tuyển dụng!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Lỗi gửi thông tin tuyển dụng");
		} finally {

			session.close();

		}
		return "client/recruitment";
	}

}
