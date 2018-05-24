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
@Table(name = "ams_user")
public class User implements Serializable{

	private static final long serialVersionUID = 5020106621452870335L;
	private Long userId;			//用户ID
	private String nickName;		//昵称
	private String realName;		//真实姓名
	private String userPwd;			//用户密码
	private Long age;				//年龄
	private Major major;			//专业
	private Grade grade;			//年级
	private Long gender;			//性别  1-男 2-女
	private String mail;			//邮箱
	private Long status;			//1-正常 2-禁言 3-冻结 4-销户
	private Date createDate;		//注册时间
	private String activeCode;		//激活码
	private Set<Club> clubs = new HashSet<>();;		//已加入社团
	private Set<Activity> activities = new HashSet<>();	//已参加活动
	private Set<Apply> applys = new HashSet<>();		//申请
	
	public User() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	@Column(name = "nickName")
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	@Column(name = "realName")
	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}
	@Column(name = "age")
	public Long getAge() {
		return age;
	}

	public void setAge(Long age) {
		this.age = age;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "majorId")
	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}
	@ManyToOne(fetch = FetchType.EAGER)
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
	@Column(name = "mail")
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	@Column(name = "status")
	public Long getStatus() {
		return status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}
	@ManyToMany                                      //多对多关系  
    @JoinTable(name="ams_member",                     //中间表的名称
                joinColumns={@JoinColumn(name="user_id")},   //本表与中间表的外键对应关系
                    inverseJoinColumns={@JoinColumn(name="club_id")}) //另一张表与中间表的外键的对应关系
	public Set<Club> getClubs() {
		return clubs;
	}

	public void setClubs(Set<Club> clubs) {
		this.clubs = clubs;
	}
	@ManyToMany                                      //多对多关系  
    @JoinTable(name="ams_activity_user",                     //中间表的名称
                joinColumns={@JoinColumn(name="user_id")},   //本表与中间表的外键对应关系
                    inverseJoinColumns={@JoinColumn(name="activity_id")}) //另一张表与中间表的外键的对应关系
	public Set<Activity> getActivities() {
		return activities;
	}

	public void setActivities(Set<Activity> activities) {
		this.activities = activities;
	}
	@OneToMany(fetch = FetchType.LAZY , mappedBy = "belongUser")
	public Set<Apply> getApplys() {
		return applys;
	}

	public void setApplys(Set<Apply> applys) {
		this.applys = applys;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Column(name = "userPwd")
	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	@Column(name = "activeCode")
	public String getActiveCode() {
		return activeCode;
	}

	public void setActiveCode(String activeCode) {
		this.activeCode = activeCode;
	}
	
	
}
