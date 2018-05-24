package site.redstone.ams.service;

import java.util.Collection;

import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.Comment;

public interface CommentService {
	void saveComment(Comment comment);
	Collection<? extends Comment> getCommentsByClub(Club c);
}
