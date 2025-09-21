package com.r3sys.AppointmentManagerDao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.appointment.User;
@Component
public class UserDao
{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//insert data in user
	@Transactional
	public void insertUserData(User obj)
	{
	 hibernateTemplate.save(obj);
		
	}
	
	//update user data
	@Transactional
	public void updateUser(User obj)
	{
		hibernateTemplate.update(obj);
	}
	
	//delte user data
	@Transactional
	public void deleteUser(User obj)
	{
		hibernateTemplate.delete(obj);
	}
	
	
	//user single data
	public User getSigleUser(String uemail)
	{
		User user=hibernateTemplate.get(User.class, uemail);
		return user;
	}
	
	//user Get All data
	public List<User> getAlluser()
	{
		List<User> getAllUser=hibernateTemplate.loadAll(User.class);
		return getAllUser;
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
