<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%><!DOCTYPE html>
<html>
<head>
<title>活动摄影</title>
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
							<h1><a class="navbar-brand" href="index.jsp">Tycoon</a></h1>
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

<!-- gallery -->
	<div class="gallery">
		<div class="container">
			<h3><span></span>精彩一刻</h3>

			<div id="jzBox" class="jzBox">
				<div id="jzBoxNextBig"></div>
				<div id="jzBoxPrevBig"></div>
				<img src="#" id="jzBoxTargetImg" />
				<div id="jzBoxBottom">
					<div id="jzBoxTitle"></div>
					<span id="jzBoxMoreItems">
						<div id="jzBoxCounter"></div>
						<i class="arrow-left" id="jzBoxPrev"></i> 
						<i class="arrow-right" id="jzBoxNext"></i> 
					</span>
					<i class="close" id="jzBoxClose"></i>
				</div>
			</div>
			<div class="gallery-grids">
			
			
				<div class="col-md-6 gallery-grid-left">
				<s:iterator value="gallerys"  status="stuts">
				
				 <s:if test="#stuts.count%5==1">
					<div class="gallery-grid" style="margin-bottom:15px;">
						<div class="view view-eighth vie">
							<a href="${pageContext.request.contextPath}<s:property value="imgPath"/>" class="jzBoxLink item-hover" title="Tycoon">
								<img src="${pageContext.request.contextPath}<s:property value="imgPath"/>" alt=" " class="img-responsive" />
								<div class="mask">
									<h4><s:property value="belongActivity.activityName"/></h4>
								</div>
							</a>
						</div>
					</div>
				</s:if>
				</s:iterator>
				</div>
				<div class="col-md-6 gallery-grid-right">
					<div class="gallery-grid-right-grid">
					<s:iterator value="gallerys"  status="stuts">
						<s:if test="#stuts.count%5!=1">
							<div class="gallery-grid-right1">
								<div class="view view-eighth">
									<a href="${pageContext.request.contextPath}<s:property value="imgPath"/>" class="jzBoxLink item-hover" title="Tycoon">
										<img src="${pageContext.request.contextPath}<s:property value="imgPath"/>" alt=" " class="img-responsive" />
										<div class="mask mask1">
											<h4><s:property value="belongActivity.activityName"/></h4>
										</div>
									</a>
								</div>
							</div>
							</s:if>
						</s:iterator>
						<div class="clearfix"></div>
					</div>
				</div>
				
				
				<div class="clearfix"></div>
				<script src="js/jzBox.js"></script>
			</div>
		</div>
	</div>
<!-- //gallery -->

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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>