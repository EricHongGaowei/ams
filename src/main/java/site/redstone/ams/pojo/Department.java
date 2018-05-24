package site.redstone.ams.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "ams_department")
public class Department implements Serializable{

	private static final long serialVersionUID = -437697096658321700L;
	private Long deptId;		//部门ID
	private String deptName;	//部门名称
	private User minister;		//部长
	private Date createDate;	//创建时间
	private Club belongClub;	//所属社团
	
	public Department(){
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}
	@Column(name = "deptName")
	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId")
	public User getMinister() {
		return minister;
	}

	public void setMinister(User minister) {
		this.minister = minister;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "clubId")
	public Club getBelongClub() {
		return belongClub;
	}

	public void setBelongClub(Club belongClub) {
		this.belongClub = belongClub;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
