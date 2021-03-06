package com.fightclub.dao;

import java.util.List;

import com.fightclub.model.User;

public interface UserDao {
	public void add(User user);

	public void edit(User user);

	public void delete(int id);

	public User getUser(int id);

	public List<User> getAllUsers();
}
