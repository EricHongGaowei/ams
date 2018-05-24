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
@Table(name = "ams_comment")
public class Comment implements Serializable{

	private static final long serialVersionUID = 5867000097674844347L;
	private Long commentId;			//评论ID
	private Date createDate; 		//评论时间
	private User speaker;			//发表人
	private String context;			//内容
	private Club belongClub;		//评论社团
	
	public Comment() {
		
	}

	public Comment(Long commentId, Date createDate, User speaker, String context, Club belongClub) {
		super();
		this.commentId = commentId;			//评论ID
		this.createDate = createDate;		//评论时间
		this.speaker = speaker;				//评论人
		this.context = context;				//评论内容
		this.belongClub = belongClub;		//所属社团
	}
	@Id
	@GeneratedValue()
	@Column(name = "id", unique = true, nullable = false)
	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createDate")
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId")
	public User getSpeaker() {
		return speaker;
	}

	public void setSpeaker(User speaker) {
		this.speaker = speaker;
	}
	@Column(name = "context")
	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "clubId")
	public Club getBelongClub() {
		return belongClub;
	}

	public void setBelongClub(Club belongClub) {
		this.belongClub = belongClub;
	}
	
	
}
