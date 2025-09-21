package appointment.manager.controllers;

import com.r3sys.appointment.BookAppointment;
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
import com.r3sys.AppointmentManagerDao.UserDao;
import com.r3sys.appointment.BookAppointment;
import com.r3sys.appointment.Employee;
import com.r3sys.appointment.Get_Set;
import com.r3sys.appointment.User;
import com.sun.org.apache.xerces.internal.util.Status;

@Controller
public class UserController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user = context.getBean("user", User.class);
	UserDao userDao = context.getBean("userDao", UserDao.class);

	BookAppointmentADao bookappointmentDao = context.getBean(BookAppointmentADao.class);
	BookAppointment bookappointment = context.getBean(BookAppointment.class);

	Employee employee = context.getBean("employee", Employee.class);
	EmployeeDao employeeDao = context.getBean("employeeDao", EmployeeDao.class);

	@RequestMapping("/U2_UserRegistration")
	public String openUserRegistration() {
		return "U2_UserRegistration";

	}

	@RequestMapping(path = "/userRegistration", method = RequestMethod.POST)
	public String userRegistration(HttpServletRequest request) {
		user.setUemail(request.getParameter("uemail"));
		user.setUname(request.getParameter("uname"));
		user.setUdesignation(request.getParameter("udesignation"));
		user.setUdepartment(request.getParameter("udepartment"));
		user.setUcompanyName(request.getParameter("ucompanyName"));
		user.setUcontact(request.getParameter("ucontact"));
		user.setUpassword(request.getParameter("upassword"));
		user.setUaddress(request.getParameter("uaddress"));

		userDao.insertUserData(user);
		return "U_UserLogin";

	}

	@RequestMapping("/U1_Dashboard")
	public String openDashboardPage() {
		return "U1_Dashboard";
	}

	@RequestMapping("/U_UserLogin")
	public String openUserLogin() {
		return "U_UserLogin";
	}

	@RequestMapping(path = "/userloginPage", method = RequestMethod.POST)
	public String employeeLoginPage(Model m, HttpServletRequest request)

	{
		String uemail = request.getParameter("uemail");
		String upassword = request.getParameter("upassword");
		if (uemail == null || upassword == null) {
			m.addAttribute("error", "Email or password is missing.");

			return "E5_Dashboard";

		}
		User user = userDao.getSigleUser(uemail);

		if (user != null && user.getUpassword().equals(upassword)) {

			m.addAttribute("employee", user);
			user.setUemail(uemail);
			return "U1_UserDashboard";
		} else {
			m.addAttribute("error", null);
			return "error";
		}

	}

	@RequestMapping("/U3_ViewEmployee")
	public String ViewPage(Model m) {
		List<Employee> getAllEmployee = employeeDao.getAllEmployee();
		m.addAttribute("getAllEmployee", getAllEmployee);
		return "U3_ViewEmployee";
	}

	@RequestMapping("/U4_BookAppointment")
	public String openBookAppointment() {
		return "U4_BookAppointment";
	}

	@RequestMapping(path = "/registerVisitor", method = RequestMethod.POST)
	public String BookAppointment(HttpServletRequest request) {

		bookappointment.setName(user.getUname());
		bookappointment.setDesignation(user.getUdesignation());
		bookappointment.setDepartment(user.getUdepartment());
		bookappointment.setCompanyName(user.getUcompanyName());
		bookappointment.setContact(user.getUcontact());
		bookappointment.setAddress(user.getUaddress());
		bookappointment.setuEmail(user.getUemail());

		// From form input
		String empEmail = request.getParameter("eEmail");
		bookappointment.seteEmail(empEmail);

		bookappointment.setPurpose(request.getParameter("purpose"));
		bookappointment.setDescription(request.getParameter("description"));
		bookappointment.setDate(request.getParameter("date"));
		bookappointment.setTime(request.getParameter("time"));
		bookappointment.setStatus(request.getParameter("status"));

		bookappointmentDao.addBookAppointment(bookappointment);

		return "U1_UserDashboard";
	}

	@RequestMapping("/U5_ViewAppointment")
	public String viewAppointment(Model m) {
		List<BookAppointment> appointment = bookappointmentDao.allbookAppointment();
		m.addAttribute("appointment", appointment);
		return "U5_ViewAppointment";
	}

	@RequestMapping(path = "/approved", method = RequestMethod.GET)
	public String approved(Model m, HttpServletRequest request) {
		int bid = bookappointment.getBid();
		BookAppointment appointment = bookappointmentDao.selectBookAppointment(bid);
		if (appointment != null && appointment.getStatus().equalsIgnoreCase("pending")) {
			appointment.setStatus("approved");
			bookappointmentDao.updateBookAppointment(appointment);
			m.addAttribute("appointment", appointment);
		} else {
			m.addAttribute("error", "No pending appointment found with ID: " + bid);
		}
		return "redirect:/U5_ViewAppointment";

	}

	@RequestMapping(path = "/disapproved", method = RequestMethod.GET)
	public String disapproved(Model m, HttpServletRequest request) {
		int bid = bookappointment.getBid();
		BookAppointment disapproved = bookappointmentDao.selectBookAppointment(bid);
		if (disapproved != null && disapproved.getStatus().equalsIgnoreCase("pending")) {
			disapproved.setStatus("disapproved");
			bookappointmentDao.updateBookAppointment(disapproved);
			m.addAttribute("appointment", disapproved);
		} else {
			m.addAttribute("error", "No pending appointment found with ID: " + bid);
		}
		return "redirect:/U5_ViewAppointment";

	}
	
	

}
