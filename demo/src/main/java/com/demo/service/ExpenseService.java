package com.demo.service;

import java.util.List;

import com.demo.model.Expense;

public interface ExpenseService {
	Expense save(Expense e);
	List<Expense> findAll();
	int deleteById(int id);
	Expense findById(int id);

}

