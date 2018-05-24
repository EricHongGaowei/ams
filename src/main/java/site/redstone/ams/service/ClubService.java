package site.redstone.ams.service;

import java.util.List;

import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.User;

public interface ClubService {
	void add(Club club);
	List<Club> getClubsByStatus(Long status);
	void freezeClub(Club club);
	Club getClubById(Long clubId);
	void checkClub(Club club);
	List<Club> getClubsByUser(User user);
	void update(Club belongClub);
}
