package site.redstone.ams.pojo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "ams_club")
public class Club implements Serializable{

	private static final long serialVersionUID = -1476817291929734337L;

	private Long clubId;			//社团ID
	private String clubName;		//社团名称
	private String introduction;	//社团简介
	private User belongUser;		//所属人
	private Date createDate;		//创立时间
	private Date breakDate;			//解散时间
	private Long status;			//社团状态 0-已解散 1-已冻结 2-审批中 3-审批通过 4-审批拒绝
	private String advice;			//审批意见
	private String imgPath;			//社团图片
	private Set<Activity> activities = new HashSet<>();//社团活动 
	private Set<Comment> comments = new HashSet<>();	//社团评价
	private Set<Minister> ministers = new HashSet<>();	//部长
	private Set<User> members = new HashSet<>();		//社员
	private Set<Apply> applys = new HashSet<>();		//申请
	private Set<Department> depts = new HashSet<>();	//部门
	
	public Club() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getClubId() {
		return clubId;
	}
	public void setClubId(Long clubId) {
		this.clubId = clubId;
	}
	@Column(name = "clubName")
	public String getClubName() {
		return clubName;
	}
	public void setClubName(String clubName) {
		this.clubName = clubName;
	}
	@Column(name = "introduction")
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userId")
	public User getBelongUser() {
		return belongUser;
	}
	public void setBelongUser(User belongUser) {
		this.belongUser = belongUser;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "belongClub")
	public Set<Minister> getMinisters() {
		return ministers;
	}
	public void setMinisters(Set<Minister> ministers) {
		this.ministers = ministers;
	}
	@ManyToMany                                      //多对多关系  
	      @JoinTable(name="ams_member",                     //中间表的名称
	                  joinColumns={@JoinColumn(name="club_id")},   //本表与中间表的外键对应关系
	                      inverseJoinColumns={@JoinColumn(name="user_id")}) //另一张表与中间表的外键的对应关系
	public Set<User> getMembers() {
		return members;
	}
	public void setMembers(Set<User> members) {
		this.members = members;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate")
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "breakDate")
	public Date getBreakDate() {
		return breakDate;
	}
	public void setBreakDate(Date breakDate) {
		this.breakDate = breakDate;
	}
	@Column(name = "status")
	public Long getStatus() {
		return status;
	}
	public void setStatus(Long status) {
		this.status = status;
	}
	@Column(name = "advice")
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "club")
	public Set<Activity> getActivities() {
		return activities;
	}
	public void setActivities(Set<Activity> activities) {
		this.activities = activities;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "belongClub")
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "belongClub")
	public Set<Apply> getApplys() {
		return applys;
	}

	public void setApplys(Set<Apply> applys) {
		this.applys = applys;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "belongClub")
	public Set<Department> getDepts() {
		return depts;
	}

	public void setDepts(Set<Department> depts) {
		this.depts = depts;
	}
	@Column(name = "imgPath")
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
}
