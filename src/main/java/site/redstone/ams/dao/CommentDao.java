package site.redstone.ams.dao;

import java.util.Collection;

import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.Comment;

@SuppressWarnings("all")
public interface CommentDao extends BaseDao{

	Collection<? extends Comment> getCommentsByClub(Club c);
	
}
