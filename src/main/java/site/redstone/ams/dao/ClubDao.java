package site.redstone.ams.dao;

import java.util.List;

import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.User;

@SuppressWarnings("all")
public interface ClubDao  extends BaseDao{
	List<Club> getClubsByStatus(Long status);
	Club getClubById(Long clubId);
	List<Club> getClubsByUser(User user);
}
