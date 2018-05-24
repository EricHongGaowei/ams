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
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="${pageContext.request.contextPath}/manager/admin-index.jsp"><span class="am-icon-home am-in"></span> 首页</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoClubManager.action"><span class="am-icon-file"></span> 社团管理</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoApplyManager.action"><span class="am-icon-table"></span> 用户申请</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoCommentManager.action"><span class="am-icon-pencil-square-o"></span> 留言管理</a></li>
      <li><a href="${pageContext.request.contextPath}/clubAction!intoActivityManager.action"><span class="am-icon-sign-out"></span> 活动管理</a></li>
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
             <a href="${pageContext.request.contextPath}/clubAction!intoAddActivity.action" class="btn btn-default btn-success">添加活动</a>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <%-- <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
          </div> --%>
        </div>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-title">活动名称</th>
                <th class="table-user">所属社团</th>
                <th class="table-date">创建时间</th>
                <th class="table-status">开始时间</th>
                <th class="table-status">结束时间</th>
                <th class="table-status">活动人数</th>
                <th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
            <s:iterator value="clubs">
           	 <s:iterator value="activities">
            	<tr>
	            	<td><input type="checkbox" /></td>
	            	<td><s:property value="activityId" /></td>
	            	<td><s:property value="activityName" /></td>
	            	<td><s:property value="club.clubName" /></td>
	            	<td><s:property value="createDate" /></td>
	            	<td><s:property value="startDate" /></td>
	            	<td><s:property value="endDate" /></td>
	            	<td><s:if test="total==null">0</s:if><s:property value="total" /></td>
	            	<td>
		                <div class="am-btn-toolbar">
		                  <div class="am-btn-group am-btn-group-xs">
		                    <a href="${pageContext.request.contextPath}/clubAction!intoActivityDetail.action?activity.activityId=<s:property value="activityId" />" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 查看详情</a>
		                    <a href="${pageContext.request.contextPath}/clubAction!intoAddGallery.action?activity.activityId=<s:property value="activityId" />" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 添加活动图片</a>
		                  </div>
		                </div>
	              	</td>
              	</tr>
           	 </s:iterator>
            </s:iterator>
          </tbody>
        </table>
          <hr />
          <p>注：.....</p>
        </form>
      </div>

    </div>
  </div>
  <!-- content end -->
</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/admin/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/admin/assets/js/app.js"></script>

</body>
</html>
