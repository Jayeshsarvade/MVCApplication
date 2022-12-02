package ems.service;

import java.util.List;

import ems.bean.Employee;
import ems.dao.EmployeeDao;

public class EmployeeService {

	EmployeeDao ed = new EmployeeDao();
	public String storeEmployee(Employee emp) {
		if(emp.getSalary()<12000) {
			return "Salary must be > 12000";
		}else {
			return ed.storeEmployee(emp);
		}
	}
	
	public List<Employee> getAllEmployee(){
		return ed.retrieveEmployee();			// we don't want to business logic. 
	}
}
