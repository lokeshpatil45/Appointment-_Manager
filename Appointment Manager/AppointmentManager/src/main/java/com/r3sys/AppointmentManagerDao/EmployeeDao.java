package com.r3sys.AppointmentManagerDao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.appointment.Employee;

@Component
public class EmployeeDao 
{
  
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//insert data
	@Transactional
	public void addEmployee(Employee obj)
	{
		hibernateTemplate.save(obj);
		
			
	}
	
	//update data
	@Transactional
	public void updateEmployee(Employee obj)
	{
		hibernateTemplate.update(obj);
	}
	
	//delete data
	@Transactional
	
	public void deleteEmployee(Employee obj)
	{
		hibernateTemplate.delete(obj);
	}
	//select single data 
	public Employee selectEmployee(String emailId)
	{
		Employee employee=hibernateTemplate.get(Employee.class, emailId);
		 return employee;
	}
	
	//select for all
	
	public List<Employee> getAllEmployee()
	{
		 List<Employee> employee=  hibernateTemplate.loadAll(Employee.class);
		 
			return employee;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
