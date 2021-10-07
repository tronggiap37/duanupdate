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

import admin.model.OrderDetail;
import admin.model.LichNhanVien;


@Transactional
@Controller
@RequestMapping("/client/order/")
public class LichKhachHangController {
	@Autowired
	SessionFactory factory;
	
	 
	@ModelAttribute("listCalenda")
	public List<OrderDetail> list(ModelMap model){
			Session session = factory.getCurrentSession();
			String hql = "From OrderDetail";
			Query q = session.createQuery(hql);
			List<OrderDetail> list = q.list();		
		return list;
	}
	@RequestMapping("index")
	public String index(ModelMap model) {
		OrderDetail lich = new OrderDetail(); 
		 model.addAttribute("lichkhachhangs",lich); 
		return "client/order/index";
	}
	 
	
	
	@RequestMapping(value="insert", method=RequestMethod.GET) 
	public String insert(ModelMap model) {
		model.addAttribute("lichkhachhang", new OrderDetail());  
		return "client/order/insert"; 
		}
	
	@RequestMapping(value="insert", method=RequestMethod.POST) 
	public String insert(ModelMap model, @ModelAttribute("lichkhachhang") OrderDetail lichkhachhang ) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.save(lichkhachhang);   
			t.commit();   
			model.addAttribute("message", "Thêm mới thành công !"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Thêm mới thất bại !");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/client/order/insert.htm";
	}


	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		OrderDetail lichkhachhang = (OrderDetail) session.get(OrderDetail.class, id);
		session.delete(lichkhachhang);
		return "redirect:/client/order/insert.htm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("lichkhachhang", new OrderDetail());  
		return "client/order/update"; 
		}
	@RequestMapping("update/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		OrderDetail lichkhachhang = (OrderDetail) session.get(OrderDetail.class, id);
		model.addAttribute("lichkhachhang", lichkhachhang);
		return "client/order/update";
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
		return "redirect:/manage/calendar/indexCalendar.htm";
	}
	
	
	/*
	 * @RequestMapping("abc") public String abc(ModelMap model) { Session session =
	 * factory.getCurrentSession(); String hql = "FROM LichKhachHang"; Query query =
	 * session.createQuery(hql); List<LichKhachHang> list = query.list();
	 * model.addAttribute("lichkhachhangs", list); return "order/abc"; }
	 */
	
	/* New */
	
	@RequestMapping("abcOrder")  
	public String index2(ModelMap model) {    
		return "client/order/abcOrder";  
		}
	@RequestMapping("orderLichKhachHang")  
	public String index3(ModelMap model) {    
		return "client/order/orderLichKhachHang";  
		}
	
	
	@RequestMapping("abcOrder2")  
	public String index22(ModelMap model) {    
		return "client/order/abcOrder2";  
		}
	@RequestMapping("orderLichKhachHang2")  
	public String index222(ModelMap model) {    
		return "client/order/orderLichKhachHang2";  
		}
	
}
