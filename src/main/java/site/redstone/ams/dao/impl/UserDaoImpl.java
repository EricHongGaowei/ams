package site.redstone.ams.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.UserDao;
import site.redstone.ams.pojo.User;

@SuppressWarnings("all")
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl implements UserDao{

	@Override
	public boolean checkName(User user) {
		String hql = "From User u where u.nickName = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setString(0, user.getNickName());
		List list = query.list();
		if(list!=null&&list.size()>0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public User loginValidate(User user) {
		String hql = "From User u where u.nickName = ? and u.userPwd = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setString(0, user.getNickName());
		query.setString(1, user.getUserPwd());
		List list = query.list();
		if(list!=null&&list.size()>0) {
			return (User) list.get(0);
		}else {
			return null;
		}
	}

	@Override
	public User getUserById(Long userId) {
		String hql = "From User u where u.userId = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, userId);
		List list = query.list();
		if(list!=null&&list.size()>0) {
			return (User) list.get(0);
		}else {
			return null;
		}
	}

	@Override
	public void deleteUserById(Long userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> getUsers() {
		String hql = "From User u where u.status != 0";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public User getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

}
