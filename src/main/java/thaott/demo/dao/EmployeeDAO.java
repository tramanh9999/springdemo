package thaott.demo.dao;

import java.util.ArrayList;
import java.util.List;

import thaott.demo.model.Employee;

public class EmployeeDAO {
	private static final List<Employee> empList = new ArrayList<Employee>();
	
	static {
		initEmps();
	}
	
	private static void initEmps() {
		Employee emp1 = new Employee(1, "Thien Thao", true);
		Employee emp2 = new Employee(2, "Son Tung", true);
		Employee emp3 = new Employee(3, "Tu Linh", false);
		
		empList.add(emp1);
		empList.add(emp2);
		empList.add(emp3);
	}
	
	public List<Employee> getAll() {
		return empList;
	}
	
	public boolean add(Employee emp) {
		return empList.add(emp);
	}
	
	public boolean delele(Integer id) {
		boolean check = false;
		for(int i = 0; i < empList.size(); i++) {
			if(empList.get(i).getId() == id) {
				empList.remove(i);
				check = true;
			}
		}
		return check;
	}
	
	
	public boolean update(Employee emp) {
		boolean check = false;
		for(int i = 0; i < empList.size(); i++) {
			if(empList.get(i).getId() == emp.getId()) {
				empList.set(i, emp);
				check = true;
			}
		}
		return check;
	}
	
	public Employee getEmp(Integer id) {
		Employee e = new Employee();
		for(int i = 0; i < empList.size(); i++) {
			if(empList.get(i).getId() == id) {
				e = empList.get(i);
			}
		}
		return e;
	}
}
