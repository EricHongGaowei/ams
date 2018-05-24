package site.redstone.ams.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ams_grade")
public class Grade implements Serializable{

	private static final long serialVersionUID = -4408055450059969729L;
	private Long gradeId;				//年级ID
	private String gradeName;			//年级名称
	
	public Grade() {
		
	}
	
	public Grade(String gradeName) {
		this.gradeName = gradeName;
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getGradeId() {
		return gradeId;
	}

	public void setGradeId(Long gradeId) {
		this.gradeId = gradeId;
	}
	@Column(name = "gradeName")
	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	
	
}
