package site.redstone.ams.service;

import java.util.List;

import site.redstone.ams.pojo.Grade;

public interface GradeService {
	List<Grade> getAllGrades();
	Grade getGradeById(Long gradeId);
}
