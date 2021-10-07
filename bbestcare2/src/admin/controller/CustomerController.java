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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.model.Customer;
import admin.model.LichNhanVien;





@Transactional
@Controller
@RequestMapping("/manage/customer/")
public class CustomerController {
	@Autowired
	SessionFactory factory;
	
	/*
	 * @ModelAttribute("index") public List<Customer> list(ModelMap model){ Session
	 * session = factory.getCurrentSession(); String hql = "From Customer"; Query q
	 * = session.createQuery(hql); List<Customer> list = q.list(); return list; }
	 */
	@ModelAttribute("listCustomer")
	public List<Customer> list(ModelMap model){
			Session session = factory.getCurrentSession();
			String hql = "From Customer";
			Query q = session.createQuery(hql);
			List<Customer> list = q.list();		
		return list;
	}
	@RequestMapping("index")
	public String index(ModelMap model) {
		Customer lich = new Customer(); 
		 model.addAttribute("customers",lich); 
		return "manage/customer/index";
	}
	@RequestMapping("delete/{phone}")
	public String delete(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, phone);
		session.delete(customer);
		return "redirect:/manage/customer/index.htm";
	}
	
}
