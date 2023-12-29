package com.hibernate;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.hibernate.bean.Employee;
import com.hibernate.dao.EmployeeDAO;
@Controller
	public class EMSController extends HttpServlet{
	@Autowired
	EmployeeDAO dao;

	@RequestMapping("Links")
	public ModelAndView loadLinks() {
		ModelAndView mv = new ModelAndView("Links");
		return mv;
	}

	@RequestMapping("A")
	public ModelAndView loadA() {
		ModelAndView mv = new ModelAndView("A");
		return mv;
	}
	
	@RequestMapping("InsertEmployeeFail")
	public ModelAndView loadInsertEmployeeFail() {
		ModelAndView mv = new ModelAndView("InsertEmployeeFail");
		return mv;
	}
	
	@RequestMapping("Error")
	public ModelAndView loadError() {
		ModelAndView mv = new ModelAndView("Error");
		return mv;
	}
	
	@RequestMapping("Welcome")
	public ModelAndView loadWelcome() {
		ModelAndView mv = new ModelAndView("Welcome");
		return mv;
	}
	
	@RequestMapping("UpdateEmployeeFail")
	public ModelAndView loadUpdateEmployeeFail() {
		ModelAndView mv = new ModelAndView("UpdateEmployeeFail");
		return mv;
	}
	
	@RequestMapping("InsertEmployee")
	public ModelAndView loadInsertEmployee() {
		ModelAndView mv = new ModelAndView("InsertEmployee");
		return mv;
	}

	@RequestMapping("DeleteEmployeeFail")
	public ModelAndView loadDeleteEmployeeFail() {
		ModelAndView mv = new ModelAndView("DeleteEmployeeFail");
		return mv;
	}
	
	@RequestMapping("PerformInsert")
	public ModelAndView performInsert(@ModelAttribute("bean") Employee bean) throws Exception {
try
{
		dao.insertEmployee(bean);
			ModelAndView mv = new ModelAndView("InsertEmployeeSuccess");
			mv.addObject("bean", bean);
			return mv;
}
catch(Exception e)
{
	ModelAndView mv = new ModelAndView("InsertEmployeeFail");
	return mv;
}

	}
	
	 /*@RequestMapping("PerformSearch")
	 public String print(String e, HttpServletRequest servletRequest, HttpServletResponse servletResponse) throws ServletException, IOException
	 {
	     String path = servletRequest.getParameter("e");
	     return path;
	 }*/
	@RequestMapping("PerformSearch")
	public void path(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String list = request.getParameter("e");
		if(list.equalsIgnoreCase("Insert Employee"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/InsertEmployee.jsp");
			rd.forward(request,response);
		}
		if(list.equalsIgnoreCase("Update Employee"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/UpdateEmployee.jsp");
			rd.forward(request,response);
		}
		if(list.equalsIgnoreCase("Delete Employee"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/DeleteEmployee.jsp");
			rd.forward(request,response);
		}
		if(list.equalsIgnoreCase("Find Employee"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/FindEmployee.jsp");
			rd.forward(request,response);
		}
		if(list.equalsIgnoreCase("Find All Employee"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/FindAllEmployee.jsp");
			rd.forward(request,response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/Error.jsp");
			rd.forward(request, response);
		}
	}
	
	@RequestMapping("UpdateEmployee")
	public ModelAndView loadUpdateEmployee() {
		ModelAndView mv = new ModelAndView("UpdateEmployee");
		return mv;
	}

	@RequestMapping("PerformUpdate")
	public ModelAndView performUpdate(@ModelAttribute("bean") Employee bean) {
try
{
	dao.updateEmployee(bean);
	ModelAndView mv = new ModelAndView("UpdateEmployeeSuccess");
	mv.addObject("bean", bean);
	return mv;
}
catch(Exception e)
{
	ModelAndView mv = new ModelAndView("UpdateEmployeeFail");
	return mv;
}
	}

	@RequestMapping("DeleteEmployee")
	public ModelAndView loadDeleteEmployee() {
	    List<Integer> list = dao.getIdList();
	    ModelAndView mv =new ModelAndView("DeleteEmployee");
	    mv.addObject("idList",list);
	    
	    return mv;
	}

	@RequestMapping("PerformDelete")
	public ModelAndView performDelete(@ModelAttribute ("bean") Employee bean) {
	    
	    dao.deleteEmployee(bean);
	    
	    ModelAndView mv =new ModelAndView("DeleteEmployeeSuccess");
	    mv.addObject("bean", bean);
	    return mv;
	}

	@RequestMapping("FindEmployee")
	public ModelAndView loadFindEmployee() {
	    List<Integer> list = dao.getIdList();
	    ModelAndView mv =new ModelAndView("FindEmployee");
	    mv.addObject("idList",list);
	    
	    return mv;
	}

	@RequestMapping("PerformFind")
	public ModelAndView performFind(@ModelAttribute ("bean") Employee bean) {
	    
	    Employee emp = dao.findEmployee(bean);
	    
	    ModelAndView mv =new ModelAndView("FindEmployeeSuccess");
	    mv.addObject("emp", emp);
	    return mv;
	}

	@RequestMapping("FindAllEmployee")
	public ModelAndView loadFindAllEmployee() {
	    List<Employee> list = dao.getFindAllEmployees();
	    ModelAndView mv =new ModelAndView("FindAllEmployee");
	    mv.addObject("idList",list);
	    
	    return mv;
	}
}
