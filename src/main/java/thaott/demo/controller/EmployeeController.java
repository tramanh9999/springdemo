package thaott.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import thaott.demo.dao.EmployeeDAO;
import thaott.demo.model.Employee;

@Controller
public class EmployeeController {
	
	@RequestMapping("/")
	@ResponseBody
	public String welcome() {
		return "Welcome to Page";
	}
	
	@RequestMapping("/viewemp")
	public String getAll(Model model) {
		EmployeeDAO dao = new EmployeeDAO();
		List<Employee> list = dao.getAll();
		model.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping("/showEmployeeForm")
	public ModelAndView getEmployeeForm() {
		ModelAndView mv = new ModelAndView("addEmployee");
		mv.addObject("employeeEntity",new Employee());
		return mv;
	}
	
	@RequestMapping("/addEmp")
	public String addEmployee(@ModelAttribute Employee e)  {
		EmployeeDAO dao = new EmployeeDAO();
		dao.add(e);
		return "redirect:/viewemp";
	}
	
	@RequestMapping("/deleteEmp")
	public String deleteEmp(HttpServletRequest request) {
		int employeeId = Integer.parseInt(request.getParameter("id"));
		EmployeeDAO dao = new EmployeeDAO();
		dao.delele(employeeId);
		return "redirect:/viewemp";
	}
	
	@RequestMapping("/editEmp")
	public ModelAndView getEditForm(HttpServletRequest request) {
		EmployeeDAO dao = new EmployeeDAO();
		Integer id = Integer.parseInt(request.getParameter("id"));
		ModelAndView model = new ModelAndView("editEmp");
		model.addObject("employee", dao.getEmp(id));
		return model;
	}
	
	@RequestMapping("/updateEmp")
	public String updateEmp(@ModelAttribute Employee e) {
		EmployeeDAO dao = new EmployeeDAO();
		dao.update(e);
		return "redirect:/viewemp";
	}
	
	
}
