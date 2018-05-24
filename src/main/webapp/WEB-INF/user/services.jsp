<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>社团概览</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
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
								<li><a href="index.jsp" data-hover="首页">首页</a></li>
								<li class="active"><a href="services.jsp" data-hover="社团概览">社团概览</a></li>
								<li><a href="gallery.jsp" data-hover="活动摄影">活动摄影</a></li>
								<li><a href="short-codes.jsp" data-hover="Short Codes">Short Codes</a></li>
								<li><a href="mail.jsp" data-hover="个人中心">个人中心</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>		
		</div>
	</div>
<!-- //banner -->

<!-- services -->
	<div class="services">
		<div class="container">
			<h3><span></span>社团概览</h3>
			<div class="services-grids">
				<div class="col-md-3 services-grid">
					<div class="services-grid1">
						<img src="images/4.jpg" alt=" " class="img-responsive" />
						<div class="services-grid1-pos hvr-sweep-to-top">
							<span class="glyphicon glyphicon-export" aria-hidden="true"></span>
						</div>
					</div>
					<div class="services-grid1-bottom">
						<h4><a href="single.jsp">轮滑社</a></h4>
						<p>感受轮滑带来的无穷魅力吧!</p>
						<div class="more">
							<a href="single.jsp"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="col-md-3 services-grid">
					<div class="services-grid1">
						<img src="images/5.jpg" alt=" " class="img-responsive" />
						<div class="services-grid1-pos hvr-sweep-to-top">
							<span class="glyphicon glyphicon-export" aria-hidden="true"></span>
						</div>
					</div>
					<div class="services-grid1-bottom">
						<h4><a href="single.jsp">音乐社</a></h4>
						<p>感受音乐带来的无限活力吧!</p>
						<div class="more">
							<a href="single.jsp"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="col-md-3 services-grid">
					<div class="services-grid1">
						<img src="images/6.jpg" alt=" " class="img-responsive" />
						<div class="services-grid1-pos hvr-sweep-to-top">
							<span class="glyphicon glyphicon-export" aria-hidden="true"></span>
						</div>
					</div>
					<div class="services-grid1-bottom">
						<h4><a href="single.jsp">诗词社</a></h4>
						<p>梦回唐清诗画里!</p>
						<div class="more">
							<a href="single.jsp"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="col-md-3 services-grid">
					<div class="services-grid1">
						<img src="images/7.jpg" alt=" " class="img-responsive" />
						<div class="services-grid1-pos hvr-sweep-to-top">
							<span class="glyphicon glyphicon-export" aria-hidden="true"></span>
						</div>
					</div>
					<div class="services-grid1-bottom">
						<h4><a href="single.jsp">骑行社</a></h4>
						<p>读万卷书!行万里路!</p>
						<div class="more">
							<a href="single.jsp"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!-- //services -->


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
	<script src="js/bootstrap.js"></script>
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