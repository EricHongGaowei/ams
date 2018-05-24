package site.redstone.ams.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.GradeDao;
import site.redstone.ams.pojo.Grade;
import site.redstone.ams.service.GradeService;


@SuppressWarnings("all")
@Service("gradeService")
public class GradeServiceImpl implements GradeService{

	private GradeDao gradeDao;
	
	@Override
	public List<Grade> getAllGrades() {
		return gradeDao.getAllGrades();
	}

	public GradeDao getGradeDao() {
		return gradeDao;
	}

	@Autowired
	public void setGradeDao(GradeDao gradeDao) {
		this.gradeDao = gradeDao;
	}

	@Override
	public Grade getGradeById(Long gradeId) {
		return gradeDao.getGradeById(gradeId);
	}

}
