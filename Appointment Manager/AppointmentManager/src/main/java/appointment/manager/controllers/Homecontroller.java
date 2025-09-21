package appointment.manager.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.AppointmentManagerDao.EmployeeDao;
import com.r3sys.AppointmentManagerDao.UserDao;
import com.r3sys.appointment.Employee;
import com.r3sys.appointment.User;


@Controller
public class Homecontroller {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Employee employee = context.getBean("employee", Employee.class);
	EmployeeDao employeeDao = context.getBean("employeeDao", EmployeeDao.class);
	
	User user=context.getBean("user", User.class);
	UserDao userDao=context.getBean("userDao", UserDao.class);
	

	@RequestMapping("/")
	public String openAdmin() {
		return "index";
	}

	@RequestMapping("/login")
	public String logout() {
		return "/";
	}
	
	@RequestMapping("/A_dashboard")
	public String Admindashboard() {
		return "A_dashboard";
	}

	@RequestMapping("/AdminLogin")
	public String openAdminLoginPage()
	{
		return "AdminLogin";
	}
	@RequestMapping(path = "/AdminLoginPage", method = RequestMethod.POST)
	public String openLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if (email.equals("lokesh@gmail.com") && password.equals("lokesh"))
		{
			return "A_dashboard";
		}
		else
		{

			return "index";
		}
	}

	@RequestMapping("/A1_AddEmployee")
	public String addEmployee() {
		return "A1_AddEmployee";
	}

	@RequestMapping(path = "/AddEmployee", method = RequestMethod.POST)
	public String insertEmployee(HttpServletRequest request) {
		employee.setEmailId(request.getParameter("emailId"));
		employee.setName(request.getParameter("name"));
		employee.setDesignation(request.getParameter("designation"));
		employee.setDepartment(request.getParameter("department"));
		employee.setContact(request.getParameter("contact"));
		employee.setPassword(request.getParameter("password"));
		employeeDao.addEmployee(employee);
		return "A_dashboard";
	}
	
	@RequestMapping("/A2_ViewEmployees")
	public String openViewEmployee(Model m)
	{
		List<Employee> getAllEmployee=employeeDao.getAllEmployee();
		m.addAttribute("getAllEmployee",getAllEmployee );
		return "A2_ViewEmployees";		
	}
	
	@RequestMapping(path="/delete",method=RequestMethod.GET)
	public String deleteAccount(HttpServletRequest request)
	{
		String email=request.getParameter("email");
		Employee employee= employeeDao.selectEmployee(email);
		employeeDao.deleteEmployee(employee);
		return "redirect:/A2_ViewEmployees";
		
	}
	
	@RequestMapping("/A3_viewUser")
	public String openViewUser(Model m)
	{
		List<User> getAllUser=userDao.getAlluser();
		m.addAttribute("getAllUser",getAllUser );
		return "A3_viewUser";		
	}
	
	

}
