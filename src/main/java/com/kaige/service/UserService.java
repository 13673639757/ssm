package com.kaige.service;

import java.util.List;

import com.kaige.entity.User;

public interface UserService {

	User getUserById(int userId);

	User findByUsername(String name);

	List<User> selectByList();
	
	void saveUser(User user)throws Exception;

    boolean updateUser(User user);

    boolean deleteUser(int id);

}
