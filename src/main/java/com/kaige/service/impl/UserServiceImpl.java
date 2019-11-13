package com.kaige.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kaige.dao.UserDao;
import com.kaige.entity.User;
import com.kaige.service.UserService;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    Logger logger=Logger.getLogger(UserServiceImpl.class);
	@Resource  
    private UserDao userDao;
    @Override
	public User getUserById(int id) {
        logger.info("getUserById");
		return userDao.findByUserid(id);
	}
    @Override
	public User findByUsername(String name) {
        logger.info("findByUsername");
		return userDao.findByUsername(name);
	}

	@Override
	public List<User> selectByList() {
        logger.info("selectByList");
		return userDao.selectByList();
	}

	@Override
	public void saveUser(User user)throws Exception {
        logger.info("saveUser");
		userDao.saveUser(user);
        User user1=new User();
        user1.setName("si");
        user1.setAge(11);
        user1.setPassword("123456");
        int a=1/0;
		userDao.saveUser(user1);
	}

	@Override
	public boolean updateUser(User user) {
        logger.info("updateUser");
		return userDao.updateUser(user);
	}

	@Override
	public boolean deleteUser(int id) {
        logger.info("deleteUser");
		return userDao.deleteUser(id);
	}

}
