package site.redstone.ams.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.http.HttpRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import site.redstone.ams.pojo.Activity;
import site.redstone.ams.pojo.Apply;
import site.redstone.ams.pojo.Club;
import site.redstone.ams.pojo.Comment;
import site.redstone.ams.pojo.Gallery;
import site.redstone.ams.pojo.User;
import site.redstone.ams.service.ActivityService;
import site.redstone.ams.service.ApplyService;
import site.redstone.ams.service.ClubService;
import site.redstone.ams.service.CommentService;
import site.redstone.ams.service.GalleryService;

@SuppressWarnings("all")
@ParentPackage("basePackage")
@Namespace("/")
@Action(value = "clubAction")
@Results({
	@Result(name = "reLogin", location = "/front/login.jsp"),
	@Result(name = "add_success", location = "/front/index.jsp"),
	@Result(name = "intoClubAdmin_success", location = "/admin/admin-club.jsp"),
	@Result(name = "listClubs_success", location = "/front/club.jsp"),
	@Result(name = "intoClubApply_success", location = "/front/clubApply.jsp"),
	@Result(name = "clubApply_success", location = "/front/index.jsp"),
	@Result(name = "clubDetail_success", location = "/front/clubDetail.jsp"),
	@Result(name = "leaveComment_success", location = "/front/clubDetail.jsp"),
	@Result(name = "intoApplyManager_success", location = "/manager/admin-apply.jsp"),
	@Result(name = "intoClubManager_success", location = "/manager/admin-club.jsp"),
	@Result(name = "intoActivityManager_success", location = "/manager/admin-activity.jsp"),
	@Result(name = "intoAddActivity_success", location = "/manager/new-activity.jsp"),
	@Result(name = "addActivity_success", location = "/manager/admin-activity.jsp"),
	@Result(name = "intoActivityDetail_success", location = "/front/activityDetail.jsp"),
	@Result(name = "intoIndex_success", location = "/front/index.jsp"),
	@Result(name = "intoNewClub_success", location = "/front/new_club.jsp"),
	@Result(name = "intoCommentManager_success", location = "/manager/admin-comment.jsp"),
	@Result(name = "joinActivity_success", location = "clubAction!intoActivityDetail.action",type="redirect"),
	@Result(name = "intoIndexAction", location = "clubAction!intoIndex.action",type="redirect"),
	@Result(name = "intoAddGallery_success", location = "/manager/admin-addGallery.jsp"),
	@Result(name = "intoGallery_success", location = "/front/gallery.jsp"),
	@Result(name = "intoGalleryBroswer_success", location = "/front/gallery-detail.jsp"),
	@Result(name = "intoAdminIndex_success", location = "/admin/admin-index.jsp")
	}) 

public class ClubAction extends ActionSupport{

	private static final long serialVersionUID = -8375660696351039643L;
	
	private File clubImage;
	
	private File name;
	
	private File file;
	
	private Set<Gallery> gallerys;
	
	public Set<Gallery> getGallerys() {
		return gallerys;
	}

	public void setGallerys(Set<Gallery> gallerys) {
		this.gallerys = gallerys;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	private String msg;
	
	private List<Comment> comments;
	
	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	private List<Activity> activities;
	
	public List<Activity> getActivities() {
		return activities;
	}

	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public File getName() {
		return name;
	}

	public void setName(File name) {
		this.name = name;
	}

	private Apply apply;
	
	private Activity activity;
	
	public Activity getActivity() {
		return activity;
	}

	public void setActivity(Activity activity) {
		this.activity = activity;
	}

	private Comment comment;
	
	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	private ActivityService activityService;

	public ActivityService getActivityService() {
		return activityService;
	}

	@Autowired
	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}

	private ClubService clubService;
	
	private ApplyService applyService;
	
	private CommentService commentService;
	
	private GalleryService galleryService;
	
	public GalleryService getGalleryService() {
		return galleryService;
	}

	@Autowired
	public void setGalleryService(GalleryService galleryService) {
		this.galleryService = galleryService;
	}

	public CommentService getCommentService() {
		return commentService;
	}

	@Autowired
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	private List<Club> clubs;
	
	private Club club;

	public Club getClub() {
		return club;
	}

	public void setClub(Club club) {
		this.club = club;
	}

	public ClubService getClubService() {
		return clubService;
	}

	@Autowired
	public void setClubService(ClubService clubService) {
		this.clubService = clubService;
	}
	
	private String fileFileName; // 文件名称
	private String fileContentType; // 文件类型

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	
	/**
	 * 上传活动图片
	 * @throws IOException
	 */
	public void uploadGallery() throws IOException {
		activity = activityService.getActivityById(activity.getActivityId());
		Gallery gallery = new Gallery();
		gallery.setBelongActivity(activity);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (file != null) {
			String srcName = "gallery-" + UUID.randomUUID() + fileFileName.substring(fileFileName.lastIndexOf("."));
			File savefile = new File(new File(realpath), srcName);
			if (savefile.getParentFile().exists()) {
				try {
					savefile.getParentFile().mkdirs();
					FileUtils.copyFile(file, savefile);
					gallery.setImgPath("/upload/"+srcName);
					System.out.println("{'fileName':'" + srcName + "'}");
					out.write("{\r\n" + 
							"  \"code\": 0\r\n" + 
							"  ,\"msg\": \"\" \r\n" + 
							"  ,\"data\": {\r\n" + 
							"    \"src\": \""+ServletActionContext.getRequest().getContextPath()+"/upload/"+srcName+"\"\r\n" + 
							"  }\r\n" + 
							"}");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
        
        activity.getGallerys().add(gallery);
        activityService.update(activity);
        galleryService.saveGallery(gallery);
	}
	/**
	 * 进入社团活动照片
	 * @return
	 */
	public String intoGallery() {
		clubs = clubService.getClubsByStatus(3L);
		if(activities==null) {
			activities = new ArrayList<>();
		}
		for (Club c : clubs) {
			activities.addAll(c.getActivities());
		}
		return "intoGallery_success";
	}
	
	/**
	 * 进入图片浏览
	 * @return
	 */
	public String intoGalleryBroswer() {
		activity = activityService.getActivityById(activity.getActivityId());
		gallerys = activity.getGallerys();
		return "intoGalleryBroswer_success";
	}
	
	/**
	 * 管理员首页
	 * @return
	 */
	public String intoAdminIndex() {
		return "intoAdminIndex_success";
	}
	
	/**
	 * 进入新增活动图片的页面
	 * @return
	 */
	public String intoAddGallery() {
		activity = activityService.getActivityById(activity.getActivityId());
		return "intoAddGallery_success";
	}
	
	/**
	 * 加入活动
	 * @return
	 */
	public String joinActivity() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "加入活动请先登录账号！";
			return "reLogin";
		}
		activity = activityService.getActivityById(activity.getActivityId());
		Set<User> users = activity.getUsers();
		if(users==null) {
			users = new HashSet<>();
		}
		users.add(loginUser);
		activity.setUsers(users);
		activity.setTotal(Long.valueOf(users.size()));
		activityService.update(activity);
		return "joinActivity_success";
	}
	
	/**
	 * 进入社团评论浏览页面
	 * @return
	 */
	public String intoCommentManager() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "评论前请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		comments = new ArrayList<>();
		if(clubs!=null&&clubs.size()>0) {
			for (Club c : clubs) {
				comments.addAll(commentService.getCommentsByClub(c));
			}
		}
		return "intoCommentManager_success";
	}
	
	/**
	 * 进入新增社团的申请页面
	 * @return
	 */
	public String intoNewClub() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "新增社团请先登录账号！";
			return "reLogin";
		}
		return "intoNewClub_success";
	}
	
	/**
	 * 进入活动详情页面
	 * @return
	 */
	public String intoActivityDetail() {
		if(club!=null) {
			club = clubService.getClubById(club.getClubId());
		}
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		activity = activityService.getActivityById(activity.getActivityId());
		if(loginUser==null) {
			session.put("joined", "未登陆不可加入！");
			return "intoActivityDetail_success";
		}
		Set<User> users = activity.getUsers();
		session.put("joined", "false");
		for (User user : users) {
			if(user.getUserId()==loginUser.getUserId()) {
				session.put("joined", "true");
				break;
			}
		}
		return "intoActivityDetail_success";
	}
	
	/**
	 * 新增活动
	 * @return
	 */
	public String addActivity() {
		club = clubService.getClubById(club.getClubId());
		activity.setClub(club);
		activity.setCreateDate(new Date());
		activityService.saveActivity(activity);
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		return "addActivity_success";
	}
	
	/**
	 * 进入新增社团活动页面
	 * @return
	 */
	public String intoAddActivity() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		if(clubs==null||clubs.size()==0) {
			msg = "当前并没有任何社团属于您哦！";
			return "intoIndexAction";
		}
		return "intoAddActivity_success";
	}
	
	/**
	 * 进入社团管理页面
	 * @return
	 */
	public String intoClubAdmin() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		if(loginUser.getStatus()!=0L) {
			msg = "您不是管理员，没有相应权限！！！";
			return "login_success";
		}
		clubs = clubService.getClubsByStatus(null);
		return "intoClubAdmin_success";
	}
	
	/**
	 * 进入社团活动管理页面
	 * @return
	 */
	public String intoActivityManager() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		return "intoActivityManager_success";
	}
	
	/**
	 * 社团概览
	 * @return
	 */
	public String listClubs(){
		clubs = clubService.getClubsByStatus(3L);
		return "listClubs_success";
	}
	
	/**
	 * 进入申请管理页面(社长)
	 * @return
	 */
	public String intoApplyManager() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		return "intoApplyManager_success";
	}
	
	/**
	 * 进入社团管理(社长)
	 * @return
	 */
	public String intoClubManager() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		clubs = clubService.getClubsByUser(loginUser);
		return "intoClubManager_success";
	}
	
	/**
	 * 冻结社团
	 */
	public void freezeClub() {
		if(club!=null) {
			club = clubService.getClubById(club.getClubId());
			clubService.freezeClub(club);
		}
	}
	
	/**
	 * 审核社团
	 */
	public void checkClub() {
		if(club!=null) {
			club = clubService.getClubById(club.getClubId());
			clubService.checkClub(club);
		}
	}
	
	/**
	 * 审核社团加入申请
	 */
	public void checkApply() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		
		Apply temp = applyService.getApplyById(apply.getApplyId());
		Club belongClub = temp.getBelongClub();
		User belongUser = belongClub.getBelongUser();
		
		if(belongUser.getUserId()==loginUser.getUserId()) {
			belongClub.getMembers().add(temp.getBelongUser());
			temp.setStatus(2L);
			applyService.update(temp);
			//回显更新社团信息
			clubService.update(belongClub);
		}
	}
	
	/**
	 * 社团详情
	 * @return
	 */
	public String clubDetail() {
		club = clubService.getClubById(club.getClubId());
		return "clubDetail_success";
	}
	
	/**
	 * 申请加入社团
	 * @return
	 */
	public String clubApply() {
		club = clubService.getClubById(club.getClubId());
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		apply.setBelongClub(club);
		apply.setBelongUser(loginUser);
		apply.setCreateDate(new Date());
		apply.setStatus(1L);
		applyService.saveApply(apply);
		return "clubApply_success";
	}
	
	/**
	 * 进入入社申请新增页面
	 * @return
	 */
	public String intoClubApply() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		club = clubService.getClubById(club.getClubId());
		return "intoClubApply_success";
	}
	
	/**
	 * 社团新增
	 * @return
	 */
	public String addClub() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		club.setBelongUser(loginUser);
		club.setCreateDate(new Date());
		club.setStatus(2L);
		//获取要保存文件夹的物理路径(绝对路径)
        String realPath=ServletActionContext.getServletContext().getRealPath("/upload");
        File file = new File(realPath);
        UUID uuid = UUID.randomUUID();
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if(!file.exists())file.mkdirs();
        try {
            //保存文件
            FileUtils.copyFile(clubImage, new File(file,"club-"+uuid.toString()+".png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        club.setImgPath("upload/club-"+uuid.toString()+".png");
		clubService.add(club);
		return "add_success";
	}
	
	/**
	 * 图片上传
	 * @return
	 * @throws IOException 
	 */
	public void uploadImg() throws IOException {
		//获取要保存文件夹的物理路径(绝对路径)
        String realPath=ServletActionContext.getServletContext().getRealPath("/upload/activity"+activity.getActivityId());
        File file = new File(realPath);
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if(!file.exists())file.mkdirs();
        String s = String.valueOf(new Date().getTime());
        try {
            //保存文件
            FileUtils.copyFile(name, new File(file,"activity"+s+".png"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        ServletActionContext.getResponse().setCharacterEncoding("utf-8");
        ServletActionContext.getResponse().getWriter().write("{\"errorno\":0,\"data\":\""+realPath+"/activity"+s+".png"+"\"}");;
	}
	
	/**
	 * 社团留言
	 * @return
	 */
	public String leaveComment() {
		club = clubService.getClubById(club.getClubId());
		if(comment!=null) {
			Map session = ActionContext.getContext().getSession();
			User loginUser = (User) session.get("loginUser");
			if(loginUser==null) {
				msg = "留言前请先登录账号！";
				return "reLogin";
			}
			
			if(loginUser.getStatus()==2L) {
				msg = "您已被管理员禁言，无法留言！";
				return "reLogin";
			}
			comment.setBelongClub(club);
			comment.setCreateDate(new Date());
			comment.setSpeaker(loginUser);
			commentService.saveComment(comment);
		}
		return "leaveComment_success";
	}
	
	/**
	 * 进入首页
	 * @return
	 */
	public String intoIndex() {
		
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		session.put("hasClubs", "false");
		if(loginUser!=null) {
			clubs = clubService.getClubsByUser(loginUser);
			if(clubs!=null&&clubs.size()>0) {
				session.put("hasClub", "true");
			}
		}
		//获取社团
		List<Club> temp = clubService.getClubsByStatus(3L);
		Collections.shuffle(temp);
		clubs = new ArrayList<>();
		if(temp.size()>3) {
			for(int i=0;i<3;i++) {
				clubs.add(temp.get(i));
			}
		}else {
			clubs.addAll(temp);
		}
		
		//获取活动
		List<Activity> temp2 = activityService.getActivitysBeforeToday();
		Collections.shuffle(temp2);
		activities = new ArrayList<>();
		if(temp2.size()>3) {
			for(int i=0;i<3;i++) {
				activities.add(temp2.get(i));
			}
		}else {
			activities.addAll(temp2);
		}
		return "intoIndex_success";
	}

	public File getClubImage() {
		return clubImage;
	}

	public void setClubImage(File clubImage) {
		this.clubImage = clubImage;
	}

	public List<Club> getClubs() {
		return clubs;
	}

	public void setClubs(List<Club> clubs) {
		this.clubs = clubs;
	}

	public Apply getApply() {
		return apply;
	}

	public void setApply(Apply apply) {
		this.apply = apply;
	}

	public ApplyService getApplyService() {
		return applyService;
	}

	@Autowired
	public void setApplyService(ApplyService applyService) {
		this.applyService = applyService;
	}
	

}
