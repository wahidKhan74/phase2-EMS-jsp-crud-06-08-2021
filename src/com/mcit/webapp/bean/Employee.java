package com.mcit.webapp.bean;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ems_employee")
public class Employee {
	
	//properties
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="emp_id")
	private int id;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="salary")
	private double salary;
	
	@Column(name="dept")
	private String dept;	
	
	// constructor
	public Employee() {
		super();
	}
	
	public Employee(String firstName, String lastName, double salary, String dept) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.salary = salary;
		this.dept = dept;
	}

	// getter and setter methods
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	// override toString()
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", salary=" + salary
				+ ", dept=" + dept  + "]";
	}	
	
}
