package site.redstone.ams.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ams_minister")
public class Minister implements Serializable{

	private static final long serialVersionUID = -3300130629060680336L;
	private Long ministerId;//部长ID
	private User user;		//关联用户
	private Club belongClub;//隶属社团
	private Department department;	//隶属部门
	private String introduction;	//部门简介
	
	public Minister() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getMinisterId() {
		return ministerId;
	}
	public void setMinisterId(Long ministerId) {
		this.ministerId = ministerId;
	}
	@OneToOne
	@JoinColumn(name = "userId")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "clubId")
	public Club getBelongClub() {
		return belongClub;
	}
	public void setBelongClub(Club belongClub) {
		this.belongClub = belongClub;
	}
	@OneToOne
	@JoinColumn(name = "deptId")
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	@Column(name = "introduction")
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
}
