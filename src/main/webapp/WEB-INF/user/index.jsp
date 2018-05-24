<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
							<h1><a class="navbar-brand" href="index.jsp">RsClub</a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-4" id="link-effect-4"> 
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp" data-hover="首页">首页</a></li>
								<li><a href="services.jsp" data-hover="社团概览">社团概览</a></li>
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
		<div class="container">
			<div class="banner-info">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="banner-info-grid">
									<h3>注册一个账号 加入社团 创建社团 尽在指尖!</h3>
									<p>抛开繁琐的申请流程,现在你可以在寝室动动手指就能感受社团带来的无限精彩!</p>
									<div class="learn-more-get">
										<div class="learn-more">
											<a href="single.jsp" class="hvr-bubble-right">登录账号</a>
										</div>
										<div class="get-started">
											<a href="#banner-bottom" class="scroll hvr-bubble-left">注册账号</a>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-info-grid">
									<h3>加入一个社团,或者创建一个社团,与他人一起享受集体活动带来的乐趣!</h3>
									<p>提交申请->获得批准->参与活动!</p>
									<div class="learn-more-get">
										<div class="learn-more">
											<a href="single.jsp" class="hvr-bubble-right">加入社团</a>
										</div>
										<div class="get-started">
											<a href="#banner-bottom" class="scroll hvr-bubble-left">创建社团</a>
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
											<a href="single.jsp" class="hvr-bubble-right">发起活动</a>
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
							<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" property="" />
								<script defer src="js/jquery.flexslider.js"></script>
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
	<div class="banner-bottom" id="banner-bottom">
		<div class="container">
			<h4><span></span>加入我们!</h4>
			<p class="quia">让社团活动丰富我们的生活与学习!</i>
			</p>
			<div class="banner-bottom-grids">
				<div class="col-md-6 banner-bottom-grid-left">
					<ul>
						<li><i>1.</i><a class="link link--kumya" href="single.jsp"><span data-letters="在社团中结识新伙伴">在社团中结识新伙伴</span></a></li><br>
						<li><i>2.</i><a class="link link--kumya" href="single.jsp"><span data-letters="在集体活动中获得快乐">在集体活动中获得快乐</span></a></li><br>
						<li><i>3.</i><a class="link link--kumya" href="single.jsp"><span data-letters="在共同学习中掌握新技能">在共同学习中掌握新技能</span></a></li><br>
						<li><i>4.</i><a class="link link--kumya" href="single.jsp"><span data-letters="享受精彩校园生活">享受精彩校园生活</span></a></li><br>
						<li><i>5.</i><a class="link link--kumya" href="single.jsp"><span data-letters="你还在等什么?!">你还在等什么?!</span></a></li><br>
					</ul>
				</div>
				<div class="col-md-6 banner-bottom-grid-right">
					<div class="grid">
					<figure class="effect-zoe">
						<img src="images/1.jpg" alt=" " class="img-responsive" />
						<figcaption>
							<h3>Tycoon <span>Bizz</span></h3>
							<p class="icon-links">
								<a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>
								<a href="#"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
								<a href="#"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>
							</p>
							<p class="description">Ut enim ad minim veniam quisadminim nostrudcommodo exercitation.</p>
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
	<div class="welcome">
		<div class="container">
			<h3><span></span>活动推荐</h3>
			<div class="welcome-grids">
				<div class="col-md-4 welcome-grid">
					<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
					<h4><a class="link link--kumya" href="single.jsp"><span data-letters="Minim veniam adminim">Minim veniam adminim</span></a></h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
						laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
				</div>
				<div class="col-md-4 welcome-grid">
					<i class="glyphicon glyphicon-signal" aria-hidden="true"></i>
					<h4><a class="link link--kumya" href="single.jsp"><span data-letters="Ullam corporis suscipit">Ullam corporis suscipit</span></a></h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
						laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
				</div>
				<div class="col-md-4 welcome-grid">
					<i class="glyphicon glyphicon-cog" aria-hidden="true"></i>
					<h4><a class="link link--kumya" href="single.jsp"><span data-letters="Ut aliquid ex ea comm">Ut aliquid ex ea comm</span></a></h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
						laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
				</div>
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
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonial-grid">
									<img src="images/2.png" alt=" " class="img-responsive" />
									<h4>James Paul <span>Chairman</span></h4>
									<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
										laboriosam, nisi ut aliquid ex ea commodi consequatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, incididuntseddo eiusmod tempor incididunt 
										ut labore etdoloremagna aliqua.</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonial-grid">
									<img src="images/4.png" alt=" " class="img-responsive" />
									<h4>Laura Prince <span>Manager</span></h4>
									<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
										laboriosam, nisi ut aliquid ex ea commodi consequatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, incididuntseddo eiusmod tempor incididunt 
										ut labore etdoloremagna aliqua.</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="testimonial-grid">
									<img src="images/3.png" alt=" " class="img-responsive" />
									<h4>Michael Carl <span>Manager</span></h4>
									<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
										laboriosam, nisi ut aliquid ex ea commodi consequatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, incididuntseddo eiusmod tempor incididunt 
										ut labore etdoloremagna aliqua.</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src="js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //testimonials -->
<!-- features -->
	<div class="features">
		<div class="col-md-6 features-left">
			<div class="video-img">
				<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-play"></span></a>
			</div>
			<!--modal-video-->
			<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<section>
							<div class="modal-body">
								iframe
							</div>
						</section>
					</div>
				</div>
			</div>
			<!--//modal-video-->
		</div>
		<div class="col-md-6 features-right">
			<h3>Excepteur sint occaecat cupidatat</h3>
			<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
				consectetur, adipisci velit, sed quia non numquam eius modi tempora 
				incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingOne">
				  <h4 class="panel-title asd">
					<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>assumenda est cliche reprehenderit
					</a>
				  </h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				  <div class="panel-body panel_text">
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
				  </div>
				</div>
			  </div>
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingTwo">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>Itaque earum rerum
					</a>
				  </h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				   <div class="panel-body panel_text">
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
				  </div>
				</div>
			  </div>
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingThree">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>autem accusamus terry quibusdam
					</a>
				  </h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				   <div class="panel-body panel_text">
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
				  </div>
				</div>
			  </div>
			  <div class="panel panel-default">
				<div class="panel-heading" role="tab" id="headingFour">
				  <h4 class="panel-title asd">
					<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
					  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>excepturi sint cliche reprehenderit
					</a>
				  </h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
				   <div class="panel-body panel_text">
					Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
				  </div>
				</div>
			  </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- //features -->
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