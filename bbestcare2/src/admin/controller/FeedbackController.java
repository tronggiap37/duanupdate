package admin.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.model.OrderDetail;
import admin.model.Rate;


@Transactional
@Controller
@RequestMapping("/manage/feedback/")
public class FeedbackController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Rate";   
		Query query = session.createQuery(hql);  
		List<Rate> list = query.list();   
		model.addAttribute("feedback", list);   
		return "manage/feedback/index";  
		}
	
}

