package site.redstone.ams.dao;

import java.util.List;

import site.redstone.ams.pojo.Grade;

@SuppressWarnings("all")
public interface GradeDao extends BaseDao{
	List<Grade> getAllGrades();
	Grade getGradeById(Long gradeId);
}
