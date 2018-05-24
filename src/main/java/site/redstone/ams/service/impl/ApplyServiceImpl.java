package site.redstone.ams.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.ApplyDao;
import site.redstone.ams.pojo.Apply;
import site.redstone.ams.service.ApplyService;

@SuppressWarnings("all")
@Service("applyService")
public class ApplyServiceImpl implements ApplyService{
	private ApplyDao applyDao;

	public ApplyDao getApplyDao() {
		return applyDao;
	}

	@Autowired
	public void setApplyDao(ApplyDao applyDao) {
		this.applyDao = applyDao;
	}

	@Override
	public void saveApply(Apply apply) {
		applyDao.add(apply);
	}

	@Override
	public Apply getApplyById(Long applyId) {
		return applyDao.getApplyById(applyId);
	}

	@Override
	public void update(Apply temp) {
		applyDao.update(temp);
	}
	
	
	
	
	
}
