package site.redstone.ams.service;

import java.util.List;

import site.redstone.ams.pojo.User;

public interface UserService {
	void register(User user);
	User login(User user);
	List<User> getUsers();
	void updateUser(User user);
	User getUserById(Long userId);
}
