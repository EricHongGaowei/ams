package site.redstone.ams.dao;

import site.redstone.ams.pojo.Apply;

@SuppressWarnings("all")
public interface ApplyDao extends BaseDao{

	Apply getApplyById(Long applyId);

}
