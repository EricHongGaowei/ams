package site.redstone.ams.service;

import java.util.Date;
import java.util.List;

import site.redstone.ams.pojo.Activity;

public interface ActivityService {
	void saveActivity(Activity activity);
	Activity getActivityById(Long id);
	List<Activity> getActivitysByDate(Date startDate, Date endDate);
	List<Activity> getActivitysBeforeToday();
	void update(Activity activity);
}
