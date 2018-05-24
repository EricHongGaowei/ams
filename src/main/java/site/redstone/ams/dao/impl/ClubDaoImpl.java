package site.redstone.ams.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.ClubDao;
import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.User;

@SuppressWarnings("all")
@Repository("clubDao")
public class ClubDaoImpl  extends BaseDaoImpl implements ClubDao{

	@Override
	public List<Club> getClubsByStatus(Long status) {
		String hql = "From Club c ";
		if(status!=null) {
			hql += "where c.status = "+status;
		}
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Club getClubById(Long clubId) {
		String hql = "From Club c where c.clubId = "+clubId;
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		List<Club> clubs = query.list();
		if(clubs!=null&&clubs.size()>0) {
			return clubs.get(0);
		}else {
			return null;
		}
	}

	@Override
	public List<Club> getClubsByUser(User user) {
		String hql = "From Club c where c.belongUser.userId = "+user.getUserId();
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		return query.list();
	}


}
