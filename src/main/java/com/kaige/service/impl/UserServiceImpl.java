package com.kaige.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kaige.dao.UserDao;
import com.kaige.entity.User;
import com.kaige.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource  
    private UserDao userDao;  
	public User getUserById(int id) {
		
		return userDao.findByUserid(id);
	}

	public User findByUsername(String name) {
		
		return userDao.findByUsername(name);
	}

	@Override
	public List<User> selectByList() {
		
		return userDao.selectByList();
	}

	@Override
	public void saveUser(User user) {
		userDao.saveUser(user);
		
	}

	@Override
	public boolean updateUser(User user) {
		
		return userDao.updateUser(user);
	}

	@Override
	public boolean deleteUser(int id) {
		
		return userDao.deleteUser(id);
	}

}
