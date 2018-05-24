package site.redstone.ams.dao;

import java.util.Date;
import java.util.List;

import site.redstone.ams.pojo.Activity;

@SuppressWarnings("all")
public interface ActivityDao extends BaseDao{
	Activity getActivityById(Long id);

	List<Activity> getActivitysByDate(Date startDate, Date endDate);

	List<Activity> getActivitysBeforeToday();
}
