package site.redstone.ams.action;


import java.util.Date;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import site.redstone.ams.pojo.Grade;
import site.redstone.ams.pojo.User;
import site.redstone.ams.service.GradeService;
import site.redstone.ams.service.UserService;

@SuppressWarnings("all")
@ParentPackage("basePackage")
@Namespace("/")
@Action(value = "userAction")
@Results({
	@Result(name = "register_success", location = "/front/login.jsp"),
	@Result(name = "login_success", location =  "clubAction!intoIndex.action",type = "redirect"),
	@Result(name = "login_failed", location = "/front/login.jsp"),
	@Result(name = "intoUserAdmin_success", location = "/admin/admin-user.jsp"),
	@Result(name = "intoRegister_success", location = "/front/register.jsp"),
	@Result(name = "reLogin", location = "/front/login.jsp"),
	@Result(name = "intoAdminIndex_success", location = "/admin/admin-index.jsp"),
	@Result(name = "logOut_success", location = "/front/login.jsp"),
	@Result(name = "bannedUser_success", location = "userAction!intoUserAdmin.action",type="redirect"),
	@Result(name = "freezeUser_success", location = "userAction!intoUserAdmin.action",type="redirect"),
	@Result(name = "recoveryUser_success", location = "userAction!intoUserAdmin.action",type="redirect"),
	@Result(name = "intoProfile_success", location = "/front/profile.jsp"),
	@Result(name = "updateUser_success", location = "clubAction!intoIndex.action",type="redirect")
	}) 
public class UserAction  extends ActionSupport{

	private String msg;
	 
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}


	private User user;
	
	private List<User> users;
	
	private UserService userService;
	
	private List<Grade> grades;
	
	private GradeService gradeService;
	
	public GradeService getGradeService() {
		return gradeService;
	}

	@Autowired
	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}

	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}


	private static final long serialVersionUID = 5471213696195403817L;
	
	/**
	 * 用户信息修改
	 * @return
	 */
	public String intoProfile() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		user = loginUser;
		return "intoProfile_success";
	}
	
	/**
	 * 用户信息更新
	 * @return
	 */
	public String updateUser() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(user!=null) {
			if(user.getNickName()!=null) {
				loginUser.setNickName(user.getNickName());
			}
			
			if(user.getRealName()!=null) {
				loginUser.setRealName(user.getRealName());		
			}
			
			if(user.getUserPwd()!=null&&!user.getUserPwd().equals("")) {
				loginUser.setUserPwd(user.getUserPwd());
			}
		}
		userService.updateUser(loginUser);
		
		return "updateUser_success";
	}
	
	/**
	 * 进入管理员首页
	 * @return
	 */
	public String intoAdminIndex() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		if(loginUser.getStatus()!=0L) {
			msg = "您不是管理员，没有相应权限！！！";
		}
		return "intoAdminIndex_success";
	}
	
	/**
	 * 用户登出
	 * @return
	 */
	public String logOut() {
		Map session = ActionContext.getContext().getSession();
		session.remove("loginUser");
		session.remove("msg");
		session.remove("hasClub");
		return "logOut_success";
	}
	
	/**
	 * 用户禁言
	 * @return
	 */
	public String bannedUser() {
		Map session = ActionContext.getContext().getSession();
		User loginUser = (User) session.get("loginUser");
		if(loginUser==null) {
			msg = "请先登录账号！";
			return "reLogin";
		}
		if(loginUser.getStatus()!=0L) {
			msg = "您不是管理员，没有相应权限！！！";
			return "reLogin";
		}
		user = userService.getUserById(user.getUserId());
		user.setStatus(2L);
		userService.updateUser(user);
		return "bannedUser_success";
	}
	
	/**
	 * 用户冻结
	 * @return
	 */
	public String freezeUser() {
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
		user = userService.getUserById(user.getUserId());
		user.setStatus(3L);
		userService.updateUser(user);
		return "freezeUser_success";
	}
	
	/**
	 * 用户恢复
	 * @return
	 */
	public String recoveryUser() {
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
		user = userService.getUserById(user.getUserId());
		user.setStatus(1L);
		userService.updateUser(user);
		return "recoveryUser_success";
	}
	

	/**
	 * 用户注册
	 * @return
	 */
	public String register() {
		user.setCreateDate(new Date());
		Grade grade = gradeService.getGradeById(user.getGrade().getGradeId());
		user.setGrade(grade);
		user.setStatus(1L);
		userService.register(user);
		return "register_success";
	}
	
	/**
	 * 进入用户注册页面
	 * @return
	 */
	public String intoUserRegister() {
		grades = gradeService.getAllGrades();
		return "intoRegister_success";
	}
	
	
	/**
	 * 用户登录
	 * @return
	 */
	public String login() {
		User u = userService.login(user);
		if(u.getStatus()==3L||u.getStatus()==4L) {
			msg="您的账号已被冻结或注销！请联系管理员";
			return "reLogin";
		} 
		if(u!=null) {
			Map session = ActionContext.getContext().getSession();
			session.put("loginUser", u);
			if(u.getStatus()==0) {
				return "intoAdminIndex_success";
			}
			return "login_success";
		}else {
			return "login_failed";
		}
	}
	
	/**
	 * 进入用户管理
	 * @return
	 */
	public String intoUserAdmin() {
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
		users = userService.getUsers();
		return "intoUserAdmin_success";
	}

	public UserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public List<User> getUsers() {
		return users;
	}


	public void setUsers(List<User> users) {
		this.users = users;
	}

}
