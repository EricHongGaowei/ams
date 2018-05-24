package site.redstone.ams.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ams_major")
public class Major implements Serializable{

	private static final long serialVersionUID = 7970036836162376330L;
	private Long majorId;		//专业ID
	private String majorName;	//专业名称
	
	public Major() {
		
	}
	
	public Major(String majorName) {
		this.majorName = majorName;
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getMajorId() {
		return majorId;
	}

	public void setMajorId(Long majorId) {
		this.majorId = majorId;
	}

	@Column(name = "majorName")
	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	
}
