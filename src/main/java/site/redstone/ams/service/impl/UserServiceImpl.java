package site.redstone.ams.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.UserDao;
import site.redstone.ams.pojo.User;
import site.redstone.ams.service.UserService;

@SuppressWarnings("all")
@Service("userService")
public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	@Override
	public void register(User user) {
		userDao.add(user);
	}

	public UserDao getUserDao() {
		return userDao;
	}
	
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		User u = userDao.loginValidate(user);
		return u;
	}

	@Override
	public List<User> getUsers() {
		return userDao.getUsers();
	}

	@Override
	public void updateUser(User user) {
		userDao.update(user);
	}

	@Override
	public User getUserById(Long userId) {
		return userDao.getUserById(userId);
	}

}
