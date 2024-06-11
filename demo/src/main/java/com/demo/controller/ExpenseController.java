package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.function.ServerResponse.SseBuilder;

import com.demo.model.Expense;
import com.demo.service.ExpenseService;

@Controller
public class ExpenseController {
	@Autowired
	private ExpenseService es;
	
	@GetMapping(value = "/")
	public ModelAndView m1(ModelAndView m)
	{
		m.setViewName("index");
		return m;
	}
	
	@GetMapping(value = {"/req1","/AddExpense"})
	public ModelAndView m2(ModelAndView m)
	{
		m.addObject("expenses", es.findAll());
		m.setViewName("AddExpense");
		return m;
	}
	
	@PostMapping(value = "/req2")
	public ModelAndView m3(Expense e, String b1,ModelAndView m)
	{
		if(b1.equalsIgnoreCase("Add"))
		{
			e=es.save(e);
			if(e==null)
				m2(m);
			else {
				m.addObject("status","Record Added Successfully");
				m2(m);
			}
		}
		if(b1.equalsIgnoreCase("Delete"))
		{
			int check=es.deleteById(e.getId());
			if(check!=0)
				m.addObject("status", "Record deleted sucessfully");
			m2(m);
			
		}
		if(b1.equalsIgnoreCase("View"))
		{
			e=es.findById(e.getId());
			if(e!=null)
			{
				m.addObject("expense", e);
				m.setViewName("first");
			}
			else {
				m2(m);
			}
		}
		if(b1.equalsIgnoreCase("Edit"))
		{
			e=es.save(e);
			if(e==null)
				m2(m);
			else {
				m.addObject("status","Record Edited Successfully");
				m2(m);
			}
		}
		return m;
	}
	
}
