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
@Table(name = "ams_apply")
public class Apply implements Serializable{

	private static final long serialVersionUID = 6540035272176404473L;
	private Long applyId;			//申请ID
	private Club belongClub;		//隶属社团
	private User belongUser;		//申请用户
	private String applyContext;	//申请理由
	private Date createDate;		//申请时间
	private Long status;			//申请状态	1-已提交 2-已通过
	
	public Apply() {
		
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getApplyId() {
		return applyId;
	}

	public void setApplyId(Long applyId) {
		this.applyId = applyId;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "clubId")
	public Club getBelongClub() {
		return belongClub;
	}

	public void setBelongClub(Club belongClub) {
		this.belongClub = belongClub;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId")
	public User getBelongUser() {
		return belongUser;
	}

	public void setBelongUser(User belongUser) {
		this.belongUser = belongUser;
	}
	@Column(name = "applyContext")
	public String getApplyContext() {
		return applyContext;
	}

	public void setApplyContext(String applyContext) {
		this.applyContext = applyContext;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Column(name = "status")
	public Long getStatus() {
		return status;
	}
	public void setStatus(Long status) {
		this.status = status;
	}
	
}
