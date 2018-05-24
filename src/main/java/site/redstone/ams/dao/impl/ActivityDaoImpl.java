package site.redstone.ams.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.ActivityDao;
import site.redstone.ams.pojo.Activity;
import site.redstone.ams.pojo.Club;


@SuppressWarnings("all")
@Repository("activityDao")
public class ActivityDaoImpl extends BaseDaoImpl implements ActivityDao{

	@Override
	public Activity getActivityById(Long id) {
		String hql = "From Activity a where a.activityId = "+id;
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		List<Activity> list = query.list();
		if(list!=null&&list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
	}

	@Override
	public List<Activity> getActivitysByDate(Date startDate, Date endDate) {
		String hql = "From Activity a ";
		if(startDate!=null) {
			hql += " where a.startDate > ?";
		}
		if(startDate!=null&&endDate!=null) {
			hql += " where a.startDate > ? and a.endDate < ?";
		}
		if(startDate==null&&endDate!=null) {
			hql += " where a.endDate < ?";
		}
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		if(startDate!=null) {
			query.setDate(0, startDate);
		}
		if(startDate!=null&&endDate!=null) {
			query.setDate(0, startDate);
			query.setDate(1, endDate);
		}
		if(startDate==null&&endDate!=null) {
			query.setDate(0, endDate);
		}
		return query.list();
	}

	@Override
	public List<Activity> getActivitysBeforeToday() {
		String hql = "From Activity a where a.endDate > ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setDate(0, new Date());
		return query.list();
	}

}
