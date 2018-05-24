package site.redstone.ams.dao;

import java.util.List;

import site.redstone.ams.pojo.User;

@SuppressWarnings("all")
public interface UserDao extends BaseDao{
public boolean checkName(User user);
	
	public User loginValidate(User user);
	
	public User getUserById(Long userId);
	
	public void deleteUserById(Long userId);
	
	public List<User> getUsers();
	
	public User getUserByUserName(String userName);
}
