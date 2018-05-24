package site.redstone.ams.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.ActivityDao;
import site.redstone.ams.pojo.Activity;
import site.redstone.ams.service.ActivityService;


@SuppressWarnings("all")
@Service("activityService")
public class ActivityServiceImpl implements ActivityService{

	private ActivityDao activityDao;
	
	public ActivityDao getActivityDao() {
		return activityDao;
	}

	@Autowired
	public void setActivityDao(ActivityDao activityDao) {
		this.activityDao = activityDao;
	}

	@Override
	public void saveActivity(Activity activity) {
		activityDao.add(activity);
	}

	@Override
	public Activity getActivityById(Long id) {
		return activityDao.getActivityById(id);
	}

	@Override
	public List<Activity> getActivitysByDate(Date startDate, Date endDate) {
		return activityDao.getActivitysByDate(startDate,endDate);
	}

	@Override
	public List<Activity> getActivitysBeforeToday() {
		return activityDao.getActivitysBeforeToday();
	}

	@Override
	public void update(Activity activity) {
		activityDao.update(activity);
	}

}
