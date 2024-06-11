package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.ExpenseDao;
import com.demo.model.Expense;

@Service
@Transactional
public class ExpenseServiceImpl implements ExpenseService {
	
	@Autowired
	private ExpenseDao ed;

	@Override
	public Expense save(Expense e) {
		
		return ed.save(e);
	}

	@Override
	public List<Expense> findAll() {
		return ed.findAll();
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return ed.deleteById(id);
	}

	@Override
	public Expense findById(int id) {
		return ed.findById(id);
	}

	
}
