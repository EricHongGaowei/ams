package site.redstone.ams.dao.impl;

import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import site.redstone.ams.dao.CommentDao;
import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.Comment;


@SuppressWarnings("all")
@Repository("commentDao")
public class CommentDaoImpl extends BaseDaoImpl implements CommentDao{

	@Override
	public Collection<? extends Comment> getCommentsByClub(Club c) {
		String hql = "From Comment c where c.belongClub.clubId = "+c.getClubId();
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		return query.list();
	}

}
