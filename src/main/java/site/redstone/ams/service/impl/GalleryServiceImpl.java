package site.redstone.ams.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.redstone.ams.dao.GalleryDao;
import site.redstone.ams.pojo.Gallery;
import site.redstone.ams.service.GalleryService;

@SuppressWarnings("all")
@Service("galleryService")
public class GalleryServiceImpl implements GalleryService{
	
	private GalleryDao galleryDao;

	public GalleryDao getGalleryDao() {
		return galleryDao;
	}

	@Autowired
	public void setGalleryDao(GalleryDao galleryDao) {
		this.galleryDao = galleryDao;
	}

	@Override
	public void saveGallery(Gallery gallery) {
		galleryDao.add(gallery);
	}

}
