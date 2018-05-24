<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%><!DOCTYPE html>
<html>
<head>
<title>社团详情</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/front/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/front/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/front/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/front/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

</head>
	
<body>
<!-- banner -->
	<div class="banner1">
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<h1><a class="navbar-brand" href="index.jsp">RsClub</a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-4" id="link-effect-4"> 
							<ul class="nav navbar-nav">
								<li class="active"><a href="${pageContext.request.contextPath}/clubAction!intoIndex.action" data-hover="首页">首页</a></li>
								<li><a href="${pageContext.request.contextPath}/clubAction!listClubs.action" data-hover="社团概览">社团概览</a></li>
								<li><a href="mail.jsp" data-hover="个人中心">个人中心</a></li>
								<s:if test="#session.hasClub!=null&&#session.hasClub=='true'">
								<li><a href="${pageContext.request.contextPath}/manager/admin-index.jsp" data-hover="管理社团">管理社团</a></li>
								</s:if>
								<li><a href="${pageContext.request.contextPath}/clubAction!intoGallery.action" data-hover="精彩时刻">精彩时刻</a></li>
								<li><a href="${pageContext.request.contextPath}/userAction!logOut.action" data-hover="登出">登出</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>		
		</div>
	</div>
<!-- //banner -->

<!-- single -->
	<div class="single">
		<div class="container">
			<div class="single-grids">
				<div class="col-md-7 single-grid-left">
					<h3><s:property value="club.clubName" /></h3>
					<p class="admin">创建人  <a href="single.jsp"><s:property value="club.belongUser.nickName" /></a> <span>时间- <s:property value="club.createDate" /></span></p>
					<img src="${pageContext.request.contextPath}/<s:property value="club.imgPath" />" alt=" " class="img-responsive" />

					<p class="sequi">
						<s:property value="club.introduction" />
					</p>

					<div class="related-posts">
						<h4>社团留言板</h4>
						<s:iterator value="club.comments">
						<div class="related-posts-grid">
							<div class="related-posts-grid-left">
								<img src="${pageContext.request.contextPath}/front/images/2.png" alt=" " class="img-responsive" />
							</div>
							<div class="related-posts-grid-right">
								<h5><a href="#"><s:property value="speaker.nickName" /></a><span>On <s:property value="createDate" /></span></h5>
								<p>
									<s:property value="context" />
								</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						</s:iterator>
						
					</div>
					<div class="leave-reply">
						<h4>按个爪印</h4>
						<form action="${pageContext.request.contextPath}/clubAction!leaveComment.action?club.clubId=<s:property value="club.clubId" />" method="post">
							<textarea name="comment.context" placeholder="此处输入留言内容..." required=" "></textarea>
							<input type="submit" value="留言">
						</form>
					</div>
				</div>
				<div class="col-md-5 single-grid-right">
					<form action="#" method="post">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span><input type="text" name="Search" placeholder="Search..." required=" ">
					</form>
					<div class="recent">
						<h4>最近活动</h4>
						<ul>
							<s:iterator value="club.activities">
								<li><a href="${pageContext.request.contextPath}/clubAction!intoActivityDetail.action?activity.activityId=<s:property value="activityId" />&club.clubId=<s:property value="club.clubId" />"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i><s:property value="activityName" />!</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><s:property value="startDate" /></span></li>
							</s:iterator>
							
						</ul>
						<div>
							<a style="position:fixed;bottom:50px;right:50px" href="${pageContext.request.contextPath}/clubAction!intoClubApply.action?club.clubId=<s:property value="club.clubId" />" class="btn btn-warning large">加入<s:property value="club.clubName" /></a>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //single -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<h2><a href="index.jsp">Tycoon</a></h2>
			</div>
			<div class="col-md-6 footer-left">
				<ul class="foot-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="services.jsp">Services</a></li>
					<li><a href="gallery.jsp">Gallery</a></li>
					<li><a href="short-codes.jsp">Short Codes</a></li>
					<li><a href="mail.jsp">Mail Us</a></li>
				</ul>
				<div class="footer-line">
					
				</div>
				<ul class="footbo">
					<li><a href="mail.jsp"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Show on map</a></li>
					<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-send" aria-hidden="true"></span>info@example.com</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-left">
				<ul class="social-icons">
					<li><a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a></li>
					<li><a href="#" class="icon-button instagram"><i class="icon-instagram"></i><span></span></a></li>
					<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
					<li><a href="#" class="icon-button g-plus"><i class="icon-g-plus"></i><span></span></a></li>
				</ul>
				<ul class="footer-number">
					<li>+1234 567 890</li>
					<li>+1234 567 891</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</div>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="${pageContext.request.contextPath}/front/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>