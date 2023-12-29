package com.hibernate.Search;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hibernate.bean.Employee;
import com.hibernate.dao.EmployeeDAO;

public class Search extends HttpServlet {
	@Autowired
	EmployeeDAO dao;
	public ModelAndView performInsert(@ModelAttribute("bean") Employee bean, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String requestForm = request.getParameter("e");
		if(requestForm.equalsIgnoreCase("Insert Employee"))
		{
				ModelAndView mv = new ModelAndView("Insert Employee");
				return mv;
		}
		else
		{
			ModelAndView mv = new ModelAndView("Error");
			return mv;
		}
	}
}
