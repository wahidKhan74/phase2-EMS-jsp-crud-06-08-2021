package com.mcit.webapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.mcit.webapp.bean.Employee;
import com.mcit.webapp.util.HibernateSessionUtil;



public class EmployeeDAO {

	public static void addEmployee(Employee employee) {
		// build session factory
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		//open a session 
		Session session = factory.openSession();
		//begin tx
		Transaction tx = session.beginTransaction();
		
		//save employee
		session.save(employee);
		tx.commit();
		
		//close session
		session.close();		
	}
	
	public static List<Employee> listOfEmployee() {
		
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		//open a session 
		Session session = factory.openSession();
		
		List<Employee> listOfEmp = session.createQuery("from Employee as e").list();
		
		return listOfEmp;
	}
}
