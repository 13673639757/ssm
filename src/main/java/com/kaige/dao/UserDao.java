package com.kaige.dao;

import java.util.List;

import com.kaige.entity.User;

public interface UserDao {
	public abstract User findByUserid(int id);
	public abstract User findByUsername(String name);
	public abstract List<User> selectByList();
	public abstract void saveUser(User user);
	public abstract boolean updateUser(User user);
	public abstract boolean deleteUser(int id);
}
