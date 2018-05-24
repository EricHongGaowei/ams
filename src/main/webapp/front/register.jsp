<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
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

<!-- mail-us -->
	<div class="contact">
		<div class="container">
			<h3><span></span>用户注册</h3>
			<div class="contact-grid">
				<div class="contact-right">
					<form style="margin-left: 25%;" action="${pageContext.request.contextPath}/userAction!register.action" method="post">
						<input type="text" name="user.nickName" placeholder="用户名" required=" "/><br>
						<input type="text" name="user.realName" placeholder="真实姓名" required=" "/><br>
						<input type="text" name="user.age" placeholder="年龄" required=" "/><br>
						<input type="password" name="user.userPwd" placeholder="密码" required=" "/><br>
						<input type="password" placeholder="确认密码" required=" " /><br>
						<select style="display:block;width:48.35%;border:1px solid #E3E2E2;padding:12px 10px;margin-right: 1.45em;color: #AEAEAE;outline: none;" class="select" name="user.grade.gradeId">
							<s:iterator value="grades">
								<option value="<s:property value="gradeId" />"><s:property value="gradeName" /></option>
							</s:iterator>
						</select>
						
						<div style="display:block;width:48.35%;border:1px solid #E3E2E2;padding:12px 10px;margin-right: 1.45em;color: #AEAEAE;outline: none;">
							<input class="radio-inline" name="user.gender" type="radio" value="1"/>男
							<input class="radio-inline" name="user.gender" type="radio" value="2"/>女
						</div>
						
						<div class="clearfix"> </div>
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="contact-bottom-grids">

				<p>
					您的申请会被提交系统管理员,具体时间由于各个社团的不同有着区别,如果着急加入,不妨联系看看哦!(⊙o⊙),最后,希望您能拥有一个美好的校园回忆!
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