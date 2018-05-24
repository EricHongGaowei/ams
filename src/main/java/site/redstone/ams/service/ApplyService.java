package site.redstone.ams.service;

import site.redstone.ams.pojo.Apply;

public interface ApplyService {
	void saveApply(Apply apply);
	Apply getApplyById(Long applyId);
	void update(Apply temp);
}
