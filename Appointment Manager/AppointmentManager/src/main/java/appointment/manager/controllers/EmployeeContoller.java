package appointment.manager.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.AppointmentManagerDao.BookAppointmentADao;
import com.r3sys.AppointmentManagerDao.EmployeeDao;
import com.r3sys.appointment.BookAppointment;
import com.r3sys.appointment.Employee;
import com.r3sys.appointment.Get_Set;

@Controller
public class EmployeeContoller {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Employee employee = context.getBean("employee", Employee.class);
	EmployeeDao employeeDao = context.getBean("employeeDao", EmployeeDao.class);
	BookAppointmentADao bookappointmentDao= context.getBean(BookAppointmentADao.class);
	BookAppointment  bookappointment=context.getBean(BookAppointment.class);


	
	@RequestMapping("/E1_LoginEmployee")
	public String addEployee() {
		return "E1_LoginEmployee";
	}
	@RequestMapping("/E5_Dashboard")
	public String openEmployeeDashboar() {
		return "E5_Dashboard";
	}


	@RequestMapping(path = "/openLogin", method = RequestMethod.POST)
	public String openLogin(Model m, HttpServletRequest request) 
	{
		String emailId = request.getParameter("email");
		String password = request.getParameter("password");
		
		 if (emailId == null || password == null)
		 {
		        m.addAttribute("error", "Email or password is missing.");
		        return "E5_Dashboard";
		   
		 }
		 
		 Employee employee = employeeDao.selectEmployee(emailId);

		if (employee != null && employee.getPassword().equals(password)) 
		{
			m.addAttribute("employee", employee);
			employee.setEmailId(emailId);
			return "E5_Dashboard";
		} 
		else 
		{
			m.addAttribute("error", null);
			return "E5_Dashboard";
		}
	}
	
	@RequestMapping(path="/E2_ViewPendingAppointment")
	public String viewPendingAppointments(Model m) {
	    List<BookAppointment> pending = bookappointmentDao.allbookAppointment();  
	    m.addAttribute("pending", pending); 
	    return "E2_ViewPendingAppointment"; 
	}
	
	@RequestMapping(path="/E3_ViewApprovedAppointments")
	public String viewApprovedAppointments(Model m) {
	    List<BookAppointment> approved = bookappointmentDao.allbookAppointment();  
	    m.addAttribute("approved", approved); 
	    return "E3_ViewApprovedAppointments"; 
	}
	
	@RequestMapping(path="/E4_ViewDisapprovedAppointments")
	public String viewDisApprovedAppointments(Model m) {
	    List<BookAppointment> disapproved = bookappointmentDao.allbookAppointment();  
	    m.addAttribute("disapproved", disapproved); 
	    return "E4_ViewDisapprovedAppointments"; 
	}
	
	@RequestMapping("/index")
	public String viewDisApprovedAppintments(HttpServletRequest request) {
	   
	    return "index"; 
	}
		

}
