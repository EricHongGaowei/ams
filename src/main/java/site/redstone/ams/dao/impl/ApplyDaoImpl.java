package site.redstone.ams.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.ApplyDao;
import site.redstone.ams.pojo.Apply;
import site.redstone.ams.pojo.Club;

@SuppressWarnings("all")
@Repository("applyDao")
public class ApplyDaoImpl extends BaseDaoImpl implements ApplyDao{

	@Override
	public Apply getApplyById(Long applyId) {
		String hql = "From Apply c where c.applyId = "+applyId;
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		List<Apply> applys = query.list();
		if(applys!=null&&applys.size()>0) {
			return applys.get(0);
		}else {
			return null;
		}
	}

}
