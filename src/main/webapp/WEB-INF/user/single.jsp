<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>Single</title>
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
								<li><a href="index.jsp" data-hover="Home">Home</a></li>
								<li><a href="services.jsp" data-hover="Services">Services</a></li>
								<li><a href="gallery.jsp" data-hover="Gallery">Gallery</a></li>
								<li><a href="short-codes.jsp" data-hover="Short Codes">Short Codes</a></li>
								<li><a href="mail.jsp" data-hover="Mail Us">Mail Us</a></li>
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
					<h3>eum fugiat quo voluptas nulla pariatur</h3>
					<p class="admin">By <a href="single.jsp">Admin</a> <span>- May 16, 2016.</span></p>
					<img src="images/4.jpg" alt=" " class="img-responsive" />

					<p class="sequi">Sed ut perspiciatis unde omnis iste natus error sit voluptatem 
						accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae 
						ab illo inventore veritatis et quasi Inventoro beatae vitae dicta 
						sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit 
						aspernatur aut odit aut fugit, sed quia consequuntur magni dolores 
						eos qui ratione voluptatem sequi nesciunt.
						<span>Nemo enim ipsam voluptatem quia voluptas sit 
						aspernatur aut odit aut fugit, sed quia consequuntur magni dolores 
						eos qui ratione voluptatem sequi nesciunt</span>
						Et quasi Inventoro beatae vitae dicta 
						sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit 
						aspernatur aut odit aut fugit, sed quia consequuntur magni dolores 
						eos qui ratione voluptatem sequi nesciunt.</p>

					<div class="related-posts">
						<h4>Related Comments</h4>
						<div class="related-posts-grid">
							<div class="related-posts-grid-left">
								<img src="images/2.png" alt=" " class="img-responsive" />
							</div>
							<div class="related-posts-grid-right">
								<h5><a href="#">James Paul</a><span>On May 16, 2016.</span></h5>
								<p>voluptatem quia voluptas sit 
									aspernatur aut odit aut fugit, sed quia consequuntur magni dolores 
									eos qui ratione voluptatem sequi nesciunt.</p>
								<a href="#"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>Reply</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="related-posts-grid">
							<div class="related-posts-grid-left">
								<img src="images/3.png" alt=" " class="img-responsive" />
							</div>
							<div class="related-posts-grid-right">
								<h5><a href="#">Michael Carl</a><span>On May 18, 2016.</span></h5>
								<p>voluptatem quia voluptas sit 
									aspernatur aut odit aut fugit, sed quia consequuntur magni dolores 
									eos qui ratione voluptatem sequi nesciunt.</p>
								<a href="#"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span>Reply</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="leave-reply">
						<h4>Leave a Reply</h4>
						<form action="#" method="post">
							<textarea name="Comment" placeholder="Leave a Comment Here..." required=" "></textarea>
							<input name="Name" type="text" placeholder="Name" required=" ">
							<input name="Email" type="email" placeholder="Email" required=" ">
							<input name="Subject" type="text" placeholder="Subject" required=" ">
							<div class="clearfix"> </div>
							<input type="submit" value="Send Comment">
						</form>
					</div>
				</div>
				<div class="col-md-5 single-grid-right">
					<form action="#" method="post">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span><input type="text" name="Search" placeholder="Search..." required=" ">
					</form>
					<div class="footer-top-grid1">
						<h4>Recent Tags</h4>
						<ul class="tag2">
							<li><a href="#">awesome</a></li>
							<li><a href="#">strategy</a></li>
							<li><a href="#">development</a></li>
						</ul>
						<ul class="tag2">
							<li><a href="#">Benefits</a></li>
							<li><a href="#">Calculations</a></li>
							<li><a href="#">Business</a></li>
							<li><a href="#">Profit</a></li>
						</ul>
						<ul class="tag2">
							<li><a href="#">awesome</a></li>
							<li><a href="#">strategy</a></li>
							<li><a href="#">development</a></li>
						</ul>
						<ul class="tag2">
							<li><a href="#">Benefits</a></li>
							<li><a href="#">Calculations</a></li>
							<li><a href="#">Business</a></li>
							<li><a href="#">Profit</a></li>
						</ul>
						<ul class="tag2">
							<li><a href="#">awesome</a></li>
							<li><a href="#">strategy</a></li>
							<li><a href="#">development</a></li>
						</ul>
					</div>
					<div class="recent">
						<h4>Recent Posts</h4>
						<ul>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>tempora incidunt ut labore dolore</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>May 16, 2016.</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>voluptatem quia voluptas sit</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>May 18, 2016.</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>sed quia consequuntur magni</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>May 20, 2016.</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>ratione voluptatem sequi nesciunt</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>May 25, 2016.</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>aspernatur aut odit aut fugit</a><span><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>May 28, 2016.</span></li>
						</ul>
					</div>
					<div class="categories">
						<h4>Categories</h4>
						<ul>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>tempora incidunt ut labore dolore</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>voluptatem quia voluptas sit</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-ok" aria-hidden="true"></i>sed quia consequuntur magni</a></li>
						</ul>
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