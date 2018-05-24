package site.redstone.ams.service.impl;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.CommentDao;
import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.Comment;
import site.redstone.ams.service.CommentService;

@SuppressWarnings("all")
@Service("commentService")
public class CommentServiceImpl implements CommentService{

	private CommentDao commentDao;
	
	public CommentDao getCommentDao() {
		return commentDao;
	}

	@Autowired
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	@Override
	public void saveComment(Comment comment) {
		commentDao.add(comment);
	}

	@Override
	public Collection<? extends Comment> getCommentsByClub(Club c) {
		return commentDao.getCommentsByClub(c);
	}

}
