package site.redstone.ams.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ams_gallery")
public class Gallery implements Serializable{

	private static final long serialVersionUID = 8686306369356644569L;
	private Long galleryId;
	private Activity belongActivity;
	private String imgPath;
	
	public Gallery() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getGalleryId() {
		return galleryId;
	}

	public void setGalleryId(Long galleryId) {
		this.galleryId = galleryId;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "activityId")
	public Activity getBelongActivity() {
		return belongActivity;
	}

	public void setBelongActivity(Activity belongActivity) {
		this.belongActivity = belongActivity;
	}
	@Column(name = "imgPath")
	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	
}
