<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>社团后台管理系统-社团活动</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/admin/assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/admin/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/admin.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/manager/layui/css/layui.css" />
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="admin-index.html"><span class="am-icon-home am-in"></span> 首页</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoClubManager.action"><span class="am-icon-file"></span> 社团管理</a></li>
      <li><a href="${pageContext.request.contextPath}/userAction!intoUserManager.action"><span class="am-icon-table"></span> 用户管理</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoCommentManager.action"><span class="am-icon-pencil-square-o"></span> 留言管理</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoActivityManager.action"><span class="am-icon-sign-out"></span> 活动管理</a></li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#system-nav'}"><span class="am-icon-file"></span> 系统管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub" id="system-nav">
          <li><a href="admin-log.html" class="am-cf"><span class="am-icon-check"></span> 运行日志<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
        </ul>
      </li>
    </ul>

  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表格</strong> / <small>Table</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">

            <div class="am-form-group am-margin-left am-fl">
             <a href="${pageContext.request.contextPath}/clubAction!intoAddActivity.action" class="btn btn-success">添加活动</a>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
          </div>
        </div>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <div class="am-tab-panel" id="tab1">
        <form class="am-form" action="${pageContext.request.contextPath}/clubAction!addActivity.action" method="post">
          <div class="am-g am-margin-top">
            <div class="am-u-sm-1 am-text-right">
              活动名称
            </div>
            <div class="am-u-sm-4">
              <input name="activity.activityName" type="text" class="am-input-sm">
            </div>
            <div class="am-u-sm-6">*必填，不可重复</div>
          </div>
          
          <div class="am-g am-margin-top">
            <div class="am-u-sm-1 am-text-right">
              活动短介绍
            </div>
            <div class="am-u-sm-4">
              <input name="activity.shortIntroduction" type="text" class="am-input-sm">
            </div>
            <div class="am-u-sm-6">*必填，不可重复</div>
          </div>
          
          <div class="am-g am-margin-top">
            <div class="am-u-sm-1 am-text-right">
              所属社团
            </div>
            <div class="am-u-sm-4">
              <select  name="club.clubId" class="am-input-sm">
              	<s:iterator value="clubs">
              		<option value="<s:property value="clubId" />"><s:property value="clubName" /></option>
              	</s:iterator>
              </select>
            </div>
            <div class="am-u-sm-6">*必填，不可重复</div>
          </div>

          <div class="am-g am-margin-top">
            <div class="am-u-sm-1 am-text-right">
              开始时间
            </div>
            <div class="am-u-sm-4">
              <input name="activity.startDate" type="date" class="am-input-sm">
            </div>
            <div class="am-u-sm-6"></div>
          </div>

          <div class="am-g am-margin-top">
            <div class="am-u-sm-1 am-text-right">
              结束时间
            </div>
            <div class="am-u-sm-4">
              <input name="activity.endDate" type="date" class="am-input-sm">
            </div>
            <div class="am-u-sm-6"></div>
          </div>

          <div class="am-g am-margin-top-sm">
            <div class="am-u-sm-1 am-text-right">
              内容描述
            </div>
            <div class="am-u-sm-11">
              <textarea name="activity.introduction" id="body" style="display: none;"></textarea>
            </div>
          </div>
		   
 			<div class="am-g am-margin-top-sm">
            <div class="am-u-sm-1 am-text-right">
            </div>
            <div class="am-u-sm-11">
              <button type="submit" class="am-u-sm-4 btn btn-warning">发布活动</button>
            </div>
          </div>
		  
        </form>

    </div>
  </div>
  <!-- content end -->
</div>


<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<script src="${pageContext.request.contextPath}/admin/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/manager/layui/layui.js"></script>
<script type="text/javascript">
//Demo
layui.use([ 'layedit'], function() {
	var layedit = layui.layedit;
	layedit.set({
		uploadImage : {
			url : '${pageContext.request.contextPath}/uploadAction.action' //接口url
			,
			type : 'post' //默认post
			,
			field : "file"
		}
	});
	layedit.build('body');
});
</script>
</body>
</html>
