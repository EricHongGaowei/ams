package site.redstone.ams.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.ClubDao;
import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.User;
import site.redstone.ams.service.ClubService;

@SuppressWarnings("all")
@Service("clubService")
public class ClubServiceImpl implements ClubService{

	private ClubDao clubDao;
	
	@Override
	public void add(Club club) {
		clubDao.add(club);
	}

	public ClubDao getClubDao() {
		return clubDao;
	}

	@Autowired
	public void setClubDao(ClubDao clubDao) {
		this.clubDao = clubDao;
	}

	@Override
	public List<Club> getClubsByStatus(Long status) {
		return clubDao.getClubsByStatus(status);
	}

	@Override
	public void freezeClub(Club club) {
		club.setStatus(1L);
		clubDao.update(club);
	}

	@Override
	public Club getClubById(Long clubId) {
		return clubDao.getClubById(clubId);
	}

	@Override
	public void checkClub(Club club) {
		club.setStatus(3L);
		clubDao.update(club);
	}

	@Override
	public List<Club> getClubsByUser(User user) {
		return clubDao.getClubsByUser(user);
	}

	@Override
	public void update(Club belongClub) {
		clubDao.update(belongClub);
	}

}
