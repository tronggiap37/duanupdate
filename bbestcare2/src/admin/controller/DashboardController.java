package admin.controller;

import java.util.List;

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

import admin.model.LichNhanVien;
import admin.model.OrderDetail;
import admin.model.Rate;
import admin.model.Staff;


@Transactional
@Controller
@RequestMapping("/manage/dashboard/")
public class DashboardController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("caringstaff")  
	public String caringstaff() {    
		return "manage/dashboard/caringstaff";  
		}
	
	@RequestMapping("abcOrder")  
	public String index2(ModelMap model) {    
		return "manage/dashboard/abcOrder";  
		}

		
	@RequestMapping("orderLichNhanVien")  
	public String index3(ModelMap model) {    
		return "manage/dashboard/orderLichNhanVien";  
		}
	@RequestMapping("profile")  
	public String profile(ModelMap model) {    
		return "manage/dashboard/profile";  
		}
	
	@RequestMapping("error")  
	public String error(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Staff";   
		Query query = session.createQuery(hql);   
		List<Staff> list = query.list();   
		model.addAttribute("staffs", list);   
		return "manage/dashboard/error";  
		}
	
	@RequestMapping("delete1/{id}")
	public String delete1(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		LichNhanVien lichnhanvien = (LichNhanVien) session.get(LichNhanVien.class, id);
		session.delete(lichnhanvien);
		return "redirect:/manage/dashboard/caringstaff.htm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("lichkhachhang", new OrderDetail());  
		return "manage/dashboard/update"; 
		}
	@RequestMapping("update/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		OrderDetail lichkhachhang = (OrderDetail) session.get(OrderDetail.class, id);
		model.addAttribute("lichkhachhang", lichkhachhang);
		return "manage/dashboard/update";
	}
	@RequestMapping(value="update", method=RequestMethod.POST) 
	public String update(ModelMap model, @ModelAttribute("lichkhachhang") OrderDetail lichkhachhang) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.update(lichkhachhang);   
			t.commit();   
			model.addAttribute("message", "Cập nhật Thành Công!"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Cập nhật Thất Bại!");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/manage/dashboard/caringstaff.htm";
	}
	@RequestMapping("profile/{phone}")
	public String edit(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, phone);
		model.addAttribute("staff", staff);
		return "manage/dashboard/profile";
	}
	@RequestMapping("dashboard")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Rate";   
		Query query = session.createQuery(hql);  
		List<Rate> list = query.list();   
		model.addAttribute("feedback", list);   
		return "manage/dashboard/dashboard";  
		}
	
}
