<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Bonfire a Ecommerce Category Flat Bootstarp Responsive
	Website Template | Account :: w3layouts</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" type="text/css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>

<script src="<c:url value="/resources/js/responsiveslides.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.flexisel.js" />"></script>
<script src="<c:url value="/resources/js/jquery.etalage.min.js" />"></script>

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
	type="text/css" media="all" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in">
					<div class="logo">
						<a href="index.html"><img src="resources/images/logo.png"
							alt=" "></a>
					</div>
					<div class="header-in">
						<ul class="icon1 sub-icon1">
							<c:if test="${user != null}">
								<li><a href="home.do?action=index">Hi, ${ user }</a></li>
								<li><a href="account.do?action=logout">Logout</a></li>
							</c:if>
							<c:if test="${user == null}">
								<li><a href="account.do?action=loadLogin">LOGIN</a></li>
								<li><a href="account.do?action=loadRegister">REGISTER</a></li>
							</c:if>
							<li><div class="cart">
									<a href="home.do?action=editCart" class="cart-in"> </a>
									<c:if test="${cart != null }">
										<span> ${cart.size() } </span>
									</c:if>
								</div>
								<ul class="sub-icon1 list">
									<h3>Recently added items</h3>
									<div class="shopping_cart">
										<c:forEach var="product" items="${ cart }">
											<div class="cart_box">
												<div class="message">

													<div class="list_img">
														<img src="${ product.product.img }" class="img-responsive"
															alt="">
													</div>
													<div class="list_desc">
														<h4>
															<a href="#">${ product.product.productName }</a>
														</h4>
														<span class="actual"> $${ product.product.price }</span>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="total">
										<div class="total_left">CartSubtotal :</div>
										<div class="total_right">${ totalCost }</div>
										<div class="clearfix"></div>
									</div>
									<div class="login_buttons">
										<div class="check_button">
											<a href="#">Check out</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</ul></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<div class="h_menu4">
					<a class="toggleMenu" href="#">Menu</a>
					<ul class="nav">
						<li class="active"><a href="index.html"><i> </i>Desktops</a></li>
						<li><a href="home.do?action=products">Products</a>
							<ul class="drop">
								<c:forEach var="item" items="${brains}">
									<li><a href="#">${item.brainName}</a></li>
								</c:forEach>
							</ul></li>
						<li><a href="contact.html">Contact </a></li>
					</ul>
					<script type="text/javascript"
						src="<c:url value="/resources/js/nav.js" />"></script>
				</div>
			</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
				<div class="header-bottom-on">
					<p class="wel">
						<a href="account.do?action=loadRegister">Welcome visitor you
							can login or create an account.</a>
					</p>
					<div class="header-can">
						<ul class="social-in">
							<li><a href="#"><i> </i></a></li>
							<li><a href="#"><i class="facebook"> </i></a></li>
							<li><a href="#"><i class="twitter"> </i></a></li>
							<li><a href="#"><i class="skype"> </i></a></li>
						</ul>
						<div class="down-top">
							<select class="in-drop">
								<option value="Dollars" class="in-of">Dollars</option>
								<option value="Euro" class="in-of">Euro</option>
								<option value="Yen" class="in-of">Yen</option>
							</select>
						</div>
						<div class="search">
							<form>
								<input type="text" value="Search" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '';}"> <input
									type="submit" value="">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="account">
			<h2 class="account-in">Account</h2>
			<form action="account.do" method="post">
				<c:if test="${not empty msg}" />
				<h4>${msg}</h4>
				<div>
					<span class="mail">Email*</span> <input type="text" name="email">
				</div>
				<div>
					<span class="word">Password*</span> <input type="password"
						name="password">
				</div>
				<input type="submit" value="Login"> <input type="hidden"
					name="action" value="login" />
			</form>
		</div>
	</div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="col-md-4 footer-in">
					<h4>
						<i> </i>Suspendisse sed
					</h4>
					<p>Aliquam dignissim porttitor tortor non fermentum. Curabitur
						in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet,
						consectetur.</p>
				</div>
				<div class="col-md-4 footer-in">
					<h4>
						<i class="cross"> </i>Suspendisse sed
					</h4>
					<p>Aliquam dignissim porttitor tortor non fermentum. Curabitur
						in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet,
						consectetur.</p>
				</div>
				<div class="col-md-4 footer-in">
					<h4>
						<i class="down"> </i>Suspendisse sed
					</h4>
					<p>Aliquam dignissim porttitor tortor non fermentum. Curabitur
						in magna lectus. Duis sed eros diam. Lorem ipsum dolor sit amet,
						consectetur.</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!---->
		<div class="footer-middle">
			<div class="container">
				<div class="footer-middle-in">
					<h6>About us</h6>
					<p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel
						tincidunt elementum, nunc urna tristique nisi, in interdum libero
						magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
				</div>
				<div class="footer-middle-in">
					<h6>Information</h6>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>Customer Service</h6>
					<ul>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>My Account</h6>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Order History</a></li>
						<li><a href="#">Wish List</a></li>
						<li><a href="#">Newsletter</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>Extras</h6>
					<ul>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Gift Vouchers</a></li>
						<li><a href="#">Affiliates</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<p class="footer-class">
			Copyright © 2015 Bonfire Template by <a href="http://w3layouts.com/"
				target="_blank">W3layouts</a>
		</p>
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

				//$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>

	</div>
</body>
</html>