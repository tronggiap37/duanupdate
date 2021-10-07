package admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.Customer;

import admin.model.Staff;


@Transactional
@Controller
@RequestMapping("/manage/recruitment/")
public class RecruitmentController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Staff where status='Waiting'";   
		Query query = session.createQuery(hql);  
		List<Staff> list = query.list();   
		model.addAttribute("staffs", list);   
		return "manage/recruitment/index";  
		}
	
	@RequestMapping("delete/{phone}")
	public String delete(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, phone);
		session.delete(staff);
		return "redirect:/manage/recruitment/index.htm";
	}
	
	
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("staff", new Staff());  
		return "manage/recruitment/update"; 
		}
	@RequestMapping("update/{phone}")
	public String edit(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, phone);
		model.addAttribute("staff", staff);
		return "manage/recruitment/update";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST) 
	public String update(ModelMap model, @ModelAttribute("staff") Staff staff) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.update(staff);   
			t.commit();   
			model.addAttribute("message", "<i class=\"fas fa-user-check\" style=\"color: green; font-size: 20px;\"></i>Cập nhật thành công !"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Cập nhật thất bại!");  
		}  
		finally {   
			session.close();  
			}  
		return "manage/recruitment/update";
	}
	
	


}
