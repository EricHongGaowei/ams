<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
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
              <%-- <select>
                <option value="-1">所有社团</option>
                <option value="0">已解散</option>
                <option value="1">已冻结</option>
                <option value="2">待审批</option>
                <option value="3">审批通过</option>
                <option value="4">审批拒绝</option>
              </select> --%>
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
                <th class="table-title">社团名称</th>
                <th class="table-user">所属者</th>
                <th class="table-date">创建日期</th>
                <th class="table-status">状态</th>
              </tr>
          </thead>
          <tbody>
            <s:iterator value="clubs">
            	<tr>
	            	<td><input type="checkbox" /></td>
	            	<td><s:property value="clubId"/></td>
	            	<td><s:property value="clubName"/></td>
	            	<td><s:property value="belongUser.nickName" /></td>
	            	<td><s:property value="createDate" /></td>
	            	<s:if test="status==0"><td>已解散</td></s:if>
	            	<s:if test="status==1"><td>已冻结</td></s:if>
	            	<s:if test="status==2"><td>待审批</td></s:if>
	            	<s:if test="status==3"><td>审批通过</td></s:if>
	            	<s:if test="status==4"><td>审批拒绝</td></s:if>
              	</tr>
            </s:iterator>
          </tbody>
        </table>
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
<script type="text/javascript">
	function pageReload(){
		window.location.reload();
	}

	function freeze(id){
		$.ajax({url:"clubAction!freezeClub.action?club.clubId="+id,async:true,success:pageReload});
	}
	
	function check(id){
		$.ajax({url:"clubAction!checkClub.action?club.clubId="+id,async:true,success:pageReload});
	}
	


</script>
</body>
</html>
