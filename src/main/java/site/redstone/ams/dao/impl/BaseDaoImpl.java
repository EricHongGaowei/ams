package site.redstone.ams.dao.impl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.BaseDao;
@Repository("baseDAO")
public class BaseDaoImpl<T> implements BaseDao<T>{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(T obj) {
		this.getSessionFactory().getCurrentSession().save(obj);
	}

	@Override
	public void delete(T obj) {
		this.getSessionFactory().getCurrentSession().delete(obj);
	}

	@Override
	public void update(T obj) {
		this.sessionFactory.getCurrentSession().update(obj);
	}
}

