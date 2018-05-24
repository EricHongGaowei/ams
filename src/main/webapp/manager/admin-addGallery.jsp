<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>社团后台管理系统-添加活动图片</title>
<meta name="description" content="这是一个 table 页面">
<meta name="keywords" content="table">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/admin/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/admin/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/assets/css/admin.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/manager/layui/css/layui.css"  media="all">
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

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle
					href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
						class="am-icon-caret-down"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul></li>
				<li><a href="javascript:;" id="admin-fullscreen"><span
						class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar">
			<ul class="am-list admin-sidebar-list">
				<li><a
					href="${pageContext.request.contextPath}/manager/admin-index.jsp"><span
						class="am-icon-home am-in"></span> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/clubAction!intoClubManager.action"><span
						class="am-icon-file"></span> 社团管理</a></li>
				<li><a
					href="${pageContext.request.contextPath}/clubAction!intoApplyManager.action"><span
						class="am-icon-table"></span> 用户申请</a></li>
				<li><a
					href="${pageContext.request.contextPath}/clubAction!intoCommentManager.action"><span
						class="am-icon-pencil-square-o"></span> 留言管理</a></li>
				<li><a
					href="${pageContext.request.contextPath}/clubAction!intoActivityManager.action"><span
						class="am-icon-sign-out"></span> 活动管理</a></li>
			</ul>

		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">

			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">表格</strong> / <small>Table</small>
				</div>
			</div>

			<div class="am-g">
				<div class="am-u-md-6 am-cf">
					<div class="am-fl am-cf">
						<div class="am-btn-toolbar am-fl">

							<div class="am-form-group am-margin-left am-fl">
								<a
									href="${pageContext.request.contextPath}/clubAction!intoAddActivity.action"
									class="btn btn-default btn-success">添加活动</a>
							</div>
						</div>
					</div>
				</div>
				<div class="am-u-md-3 am-cf">
					<div class="am-fr">
						<div class="am-input-group am-input-group-sm">
							<input type="text" class="am-form-field"> <span
								class="am-input-group-btn">
								<button class="am-btn am-btn-default" type="button">搜索</button>
							</span>
						</div>
					</div>
				</div>
			</div>

			<div class="am-g">
				<div class="am-u-sm-12">

					<div class="layui-upload">
						<button type="button" class="layui-btn" id="test2">多图片上传</button>
						<blockquote class="layui-elem-quote layui-quote-nm" 
							style="margin-top: 10px;">
							预览图：
							<div class="layui-upload-list" id="demo2" style="height:"></div>
						</blockquote>
					</div>
				</div>

			</div>
		</div>
		<!-- content end -->
	</div>

	<footer>
		<hr>
		<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
	</footer>

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script
		src="${pageContext.request.contextPath}/admin/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/assets/js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="${pageContext.request.contextPath}/admin/assets/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/manager/layui/layui.js"></script>

	<script type="text/javascript">
		layui
				.use(
						'upload',
						function() {
							var $ = layui.jquery;
							var upload = layui.upload;

							//多图片上传
							upload
									.render({
										elem : '#test2',
										url : '${pageContext.request.contextPath}/clubAction!uploadGallery.action?activity.activityId=<s:property value="activity.activityId" />',
										multiple : true,
										before : function(obj) {
											//预读本地文件示例，不支持ie8
											obj
													.preview(function(index,
															file, result) {
														$('#demo2')
																.append(
																		'<img src="'+ result +'" alt="'+ file.name +'"style="width:30%;height:30%" class="layui-upload-img">')
													});
										},
										done : function(res) {
											//上传完毕
										}
									});

						});
	</script>

</body>
</html>
