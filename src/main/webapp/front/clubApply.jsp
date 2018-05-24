<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%><!DOCTYPE html>
<html>
<head>
<title>个人中心</title>
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
							<h1><a class="navbar-brand" href="${pageContext.request.contextPath}/clubAction!intoIndex.action">RSClub</a></h1>
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
<!-- mail-us -->
	<div class="contact">
		<div class="container">
			<h3><span></span><s:property value="club.clubName" />入社申请</h3>
			<div class="contact-grid">
				<div class="col-md-12 contact-right">
					<form action="${pageContext.request.contextPath}/clubAction!clubApply.action?club.clubId=<s:property value="club.clubId" />" method="post"  enctype="multipart/form-data">
						<textarea name="apply.applyContext" placeholder="申请理由。。。。。。。" required=" "></textarea>
						<input type="submit" value="提交"/>
						<input type="reset" value="清空"/>
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="contact-bottom-grids">

				<p>
					您的申请会被提交至社团管理者,具体时间由于各个社团的不同有着区别,如果着急加入,不妨联系看看<s:property value="club.clubName" />的社长哦!(⊙o⊙),最后,希望您能拥有一个美好的校园回忆!
				</p>

				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
					</div>
					<h4>宿州学院计算机科学与技术专业<span>AMS系统管理员洪高伟</span></h4>
				</div>
				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<a href="mailto:Hong_gaowei@163.com">管理员邮箱:Hong_gaowei@163.com</a>
				</div>
				<div class="col-md-4 contact-bottom-grid">
					<div class="dot">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
					</div>
					<h4>管理员联系电话:+86 185 0615 1035</h4>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //mail-us -->
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
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>