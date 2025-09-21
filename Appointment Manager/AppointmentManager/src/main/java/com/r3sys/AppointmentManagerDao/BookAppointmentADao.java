package com.r3sys.AppointmentManagerDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.appointment.BookAppointment;
import com.r3sys.appointment.Employee;
@Component
public class BookAppointmentADao
{
@Autowired
	HibernateTemplate hibernateTemplate;
	
	//insert(save)
	@Transactional
	public int addBookAppointment(BookAppointment obj)
	{
		Integer i=(Integer) hibernateTemplate.save(obj);
		return i;	
	}
	
	//update data
	@Transactional
	public void updateBookAppointment(BookAppointment obj)
	{
		hibernateTemplate.update(obj);
	}
	
	//delete data
	@Transactional
	public void deleteBookAppointment(BookAppointment obj)
	{
		hibernateTemplate.delete(obj);
	}
	//select single data 
	public BookAppointment selectBookAppointment(int bid)
	{
		BookAppointment employee=hibernateTemplate.get(BookAppointment.class, bid);
		 return employee;
	}
	
	//select for all
	
	public List<BookAppointment> allbookAppointment()
	{
		 List<BookAppointment> bookAppointment=  hibernateTemplate.loadAll(BookAppointment.class);
		 
			return bookAppointment;
	}
	

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
