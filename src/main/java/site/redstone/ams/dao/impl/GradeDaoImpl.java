package site.redstone.ams.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.GradeDao;
import site.redstone.ams.pojo.Grade;


@SuppressWarnings("all")
@Repository("gradeDao")
public class GradeDaoImpl extends BaseDaoImpl implements GradeDao{

	@Override
	public List<Grade> getAllGrades() {
		String hql = "From Grade g";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Grade getGradeById(Long gradeId) {
		String hql = "From Grade g where g.gradeId = "+gradeId;
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		List<Grade> list = query.list();
		if(list!=null&&list.size()>0) {
			return list.get(0);
		}else {
			return null;
		}
	}

}
