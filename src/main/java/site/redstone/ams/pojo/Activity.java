package site.redstone.ams.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
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
@Table(name = "ams_activity")
public class Activity implements Serializable{

	private static final long serialVersionUID = -8977854847452382694L;
	private Long activityId;		//活动ID
	private String activityName;	//活动名称
	private Long total;				//活动人数
	private Grade grade;			//年级限制
	private Long gender;			//性别限制
	private Date createDate;		//创建时间
	private Date startDate;			//开始时间
	private Date endDate;			//结束时间
	private String introduction;	//活动简介
	private String shortIntroduction;//短介绍
	private Set<Gallery> gallerys = new HashSet<>();	//活动摄影
	private Club club;				//隶属社团
	private Set<User> users = new HashSet<>();		//参与用户
	public Activity() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getActivityId() {
		return activityId;
	}
	public void setActivityId(Long activityId) {
		this.activityId = activityId;
	}
	
	@Column(name = "activityName")
	public String getActivityName() {
		return activityName;
	}
	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}
	
	@Column(name = "total")
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	
	@ManyToOne()
	@JoinColumn(name = "gradeId")
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	
	@Column(name = "gender")
	public Long getGender() {
		return gender;
	}
	public void setGender(Long gender) {
		this.gender = gender;
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
	@Column(name = "startDate")
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "endDate")
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "belongActivity")
	public Set<Gallery> getGallerys() {
		return gallerys;
	}
	public void setGallerys(Set<Gallery> gallerys) {
		this.gallerys = gallerys;
	}
	@Column(name = "introduction",columnDefinition="TEXT")
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "clubId")
	public Club getClub() {
		return club;
	}
	public void setClub(Club club) {
		this.club = club;
	}
	@ManyToMany                                      //多对多关系  
    @JoinTable(name="ams_activity_user",                     //中间表的名称
                joinColumns={@JoinColumn(name="activity_id")},   //本表与中间表的外键对应关系
                    inverseJoinColumns={@JoinColumn(name="user_id")}) //另一张表与中间表的外键的对应关系
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	@Column(name = "shortIntroduction")
	public String getShortIntroduction() {
		return shortIntroduction;
	}
	public void setShortIntroduction(String shortIntroduction) {
		this.shortIntroduction = shortIntroduction;
	}
	
}
