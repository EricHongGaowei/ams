<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
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
	<div class="banner">
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
							<h1><a class="navbar-brand" href="${pageContext.request.contextPath}/clubAction!intoIndex.action">RsClub</a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-4" id="link-effect-4"> 
							<ul class="nav navbar-nav">
								<li class="active"><a href="${pageContext.request.contextPath}/clubAction!intoIndex.action" data-hover="首页">首页</a></li>
								<li><a href="${pageContext.request.contextPath}/clubAction!listClubs.action" data-hover="社团概览">社团概览</a></li>
								<li><a href="${pageContext.request.contextPath}/userAction!intoProfile.action" data-hover="个人中心">个人中心</a></li>
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
		<div class="container">
			<div class="banner-info">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<s:if test="#session.loginUser==null">
							<li>
								<div class="banner-info-grid">
									<h3>注册一个账号 加入社团 创建社团 尽在指尖!</h3>
									<p>抛开繁琐的申请流程,现在你可以在寝室动动手指就能感受社团带来的无限精彩!</p>
									<div class="learn-more-get">
										<div class="learn-more">
											<a href="${pageContext.request.contextPath}/front/login.jsp" class="hvr-bubble-right">登录账号</a>
										</div>
										<div class="get-started">
											<a href="${pageContext.request.contextPath}/userAction!intoUserRegister.action" class="scroll hvr-bubble-left">注册账号</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</li>
							</s:if>
							<li>
								<div class="banner-info-grid">
									<h3>加入一个社团,或者创建一个社团,与他人一起享受集体活动带来的乐趣!</h3>
									<p>提交申请->获得批准->参与活动!</p>
									<div class="learn-more-get">
										<div class="learn-more">
											<a href="${pageContext.request.contextPath}/clubAction!listClubs.action" class="hvr-bubble-right">加入社团</a>
										</div>
										<div class="get-started">
											<a href="${pageContext.request.contextPath}/clubAction!intoNewClub.action" class="hvr-bubble-left">创建社团</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-info-grid">
									<h3>活动多姿多彩!少了你怎么行?</h3>
									<p>现在就来选择一个活动加入吧!</p>
									<div class="learn-more-get">
										<div class="learn-more">
											<a href="${pageContext.request.contextPath}/clubAction!intoAddActivity.action" class="hvr-bubble-right">发起活动</a>
										</div>
										<div class="get-started">
											<a href="#banner-bottom" class="scroll hvr-bubble-left">加入活动</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</section>		
						<!--FlexSlider-->
							<link rel="stylesheet" href="${pageContext.request.contextPath}/front/css/flexslider.css" type="text/css" media="all" property="" />
								<script defer src="${pageContext.request.contextPath}/front/js/jquery.flexslider.js"></script>
								<script type="text/javascript">
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
						<!--End-slider-script-->
			</div>
		</div>
	</div>
<!-- //banner -->

<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<h4><span></span>加入我们!</h4>
			<p class="quia">让社团活动丰富我们的生活与学习!</i>
			</p>
			<div class="banner-bottom-grids">
				<div class="col-md-6 banner-bottom-grid-left">
					<ul>
						<li><i>1.</i><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!listClubs.action"><span data-letters="在社团中结识新伙伴">在社团中结识新伙伴</span></a></li><br>
						<li><i>2.</i><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!listClubs.action"><span data-letters="在集体活动中获得快乐">在集体活动中获得快乐</span></a></li><br>
						<li><i>3.</i><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!listClubs.action"><span data-letters="在共同学习中掌握新技能">在共同学习中掌握新技能</span></a></li><br>
						<li><i>4.</i><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!listClubs.action"><span data-letters="享受精彩校园生活">享受精彩校园生活</span></a></li><br>
						<li><i>5.</i><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!listClubs.action"><span data-letters="你还在等什么?!">你还在等什么?!</span></a></li><br>
					</ul>
				</div>
				<div class="col-md-6 banner-bottom-grid-right">
					<div class="grid">
					<figure class="effect-zoe">
						<img src="${pageContext.request.contextPath}/front/images/1-nocolor.jpg" alt=" " 
						onMouseOver="this.src='${pageContext.request.contextPath}/front/images/1.jpg'"
						onMouseOut="this.src='${pageContext.request.contextPath}/front/images/1-nocolor.jpg'"
						class="img-responsive" />
						<figcaption>
							<h3>RS <span>Club</span></h3>
							<p class="description">变成更好的独一无二的自己，便是青春和努力的全部意义。</p>
						</figcaption>			
					</figure>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->

<!-- welcome -->
	<div class="welcome"  id="banner-bottom">
		<div class="container">
			<h3><span></span>活动推荐</h3>
			<div class="welcome-grids">
				<s:iterator value="activities">
					<div class="col-md-4 welcome-grid">
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<h4><a class="link link--kumya" href="${pageContext.request.contextPath}/clubAction!intoActivityDetail.action?activity.activityId=<s:property value="activityId" />"><span data-letters="<s:property value="activityName" />"><s:property value="activityName" /></span></a></h4>
						<p>
							<s:property value="shortIntroduction" />
						</p>
					</div>
				</s:iterator>
				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
<!-- //welcome -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3><span></span>明星社团</h3>
			<div class="testimonials-grids">
				<div class="wmuSlider example1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="wmuSliderWrapper">
						
						<s:iterator value="clubs">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonial-grid">
									<a href="${pageContext.request.contextPath}/clubAction!clubDetail.action?club.clubId=<s:property value="clubId" />"><img src="${pageContext.request.contextPath}/<s:property value="imgPath" />" alt=" " class="img-responsive" /></a>
									<h4><s:property value="clubName" /> <span><s:property value="createDate" /></span></h4>
									<p>
										<s:property value="introduction" />
									</p>
								</div>
							</div>
						</article>
						
						</s:iterator>
						
						
					</div>
				</div>
					<script src="${pageContext.request.contextPath}/front/js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //testimonials -->
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
	jQuery(document).ready(function($) {
			<s:if test="msg!=null">
				alert("<s:property value="msg" />");
			</s:if>
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>