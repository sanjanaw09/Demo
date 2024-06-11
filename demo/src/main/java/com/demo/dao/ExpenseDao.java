package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Expense;
@Repository
public interface ExpenseDao extends JpaRepository<Expense, Integer>{
	
	Expense save(Expense e);
	List<Expense> findAll();
	int deleteById(int id);
	Expense findById(int id);
}
