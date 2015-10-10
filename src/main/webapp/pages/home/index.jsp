<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.List"%>

<%@page import="com.huy.model.pojo.Brain"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bonfire a Ecommerce Category Flat Bootstarp Responsive
	Website Template | Home :: w3layouts</title>
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<!--//theme-style-->
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
<!--slider-script-->
<script src="<c:url value="/resources/js/responsiveslides.min.js" />"></script>
<script>
	$(function() {
		$("#slider1").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--//slider-script-->
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
									<a href="checkout.do?action=editCart" class="cart-in"> </a>
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
						<li class="active"><a href="home.do?action=index"><i>
							</i>Desktops</a></li>
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
					<form></form>
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
	<div class="banner-mat">
		<div class="container">
			<div class="banner">

				<!-- Slideshow 4 -->
				<div class="slider">
					<ul class="rslides" id="slider1">
						<li><img src="resources/images/banner.jpg" alt=""></li>
						<li><img src="resources/images/banner1.jpg" alt=""></li>
						<li><img src="resources/images/banner.jpg" alt=""></li>
						<li><img src="resources/images/banner2.jpg" alt=""></li>
					</ul>
				</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						<p>Childish Gambino - Camp Now Available for just $9.99</p>
						<a href="single.html" class="hvr-shutter-in-vertical ">Purchase</a>
					</div>
					<div class="purchase">
						<a href="single.html"
							class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //slider-->
		</div>
	</div>
	<!---->
	<div class="container">
		<div class="content">
			<div class="content-top">
				<h3 class="future">FEATURED</h3>
				<div class="content-top-in">
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.html"><img src="resources/images/pi.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.html">Mascot Kitty - White</a>
								</h5>
								<div class="white">
									<a href="single.html"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>2</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.html"><img src="resources/images/pi1.jpg"
								alt="" /> </a>
							<div class="top-content">
								<h5>
									<a href="single.html">Bite Me</a>
								</h5>
								<div class="white">
									<a href="single.html"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>3</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.html"><img src="resources/images/pi2.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.html">Little Fella</a>
								</h5>
								<div class="white">
									<a href="single.html"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>5</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.html"><img src="resources/images/pi3.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.html">Astral Cruise</a>
								</h5>
								<div class="white">
									<a href="single.html"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>4</span><span>5</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!---->
			<div class="content-middle">
				<h3 class="future">BRANDS</h3>
				<div class="content-middle-in">
					<ul id="flexiselDemo1">
						<li><img src="resources/images/ap.png" /></li>
						<li><img src="resources/images/ap1.png" /></li>
						<li><img src="resources/images/ap2.png" /></li>
						<li><img src="resources/images/ap3.png" /></li>

					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems : 4,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 3
									}
								}
							});

						});
					</script>
					<script type="text/javascript"
						src="resources/js/jquery.flexisel.js"></script>

				</div>
			</div>
			<!---->
			<div class="content-bottom">
				<h3 class="future">LATEST</h3>
				<div class="content-bottom-in">
					<ul id="flexiselDemo2">
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img
									src="resources/images/pi4.jpg" alt="" />
									<div class="compare in-compare">
										<span>Add to Compare</span> <span>Add to Whislist</span>
									</div></a>
								<div class="top-content bag">
									<h5>
										<a href="single.html">Symbolic Bag</a>
									</h5>
									<div class="white">
										<a href="single.html"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
											TO CART</a>
										<p class="dollar">
											<span class="in-dollar">$</span><span>4</span><span>0</span>
										</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img
									src="resources/images/pi5.jpg" alt="" />
									<div class="compare in-compare">
										<span>Add to Compare</span> <span>Add to Whislist</span>
									</div></a>
								<div class="top-content bag">
									<h5>
										<a href="single.html">Interesting Read</a>
									</h5>
									<div class="white">
										<a href="single.html"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
											TO CART</a>
										<p class="dollar">
											<span class="in-dollar">$</span><span>2</span><span>5</span>
										</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img
									src="resources/images/pi6.jpg" alt="" />
									<div class="compare in-compare">
										<span>Add to Compare</span> <span>Add to Whislist</span>
									</div></a>
								<div class="top-content bag">
									<h5>
										<a href="single.html">The Carter</a>
									</h5>
									<div class="white">
										<a href="single.html"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
											TO CART</a>
										<p class="dollar">
											<span class="in-dollar">$</span><span>1</span><span>0</span>
										</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div></li>
						<li><div class="col-md men">
								<a href="single.html" class="compare-in "><img
									src="resources/images/pi7.jpg" alt="" />
									<div class="compare in-compare">
										<span>Add to Compare</span> <span>Add to Whislist</span>
									</div></a>
								<div class="top-content bag">
									<h5>
										<a href="single.html">Onesie</a>
									</h5>
									<div class="white">
										<a href="single.html"
											class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
											TO CART</a>
										<p class="dollar">
											<span class="in-dollar">$</span><span>6</span><span>0</span>
										</p>
										<div class="clearfix"></div>
									</div>
								</div>
							</div></li>

					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo2").flexisel({
								visibleItems : 4,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 3
									}
								}
							});

						});
					</script>
				</div>
			</div>
			<ul class="start">
				<li><a href="#"><i></i></a></li>
				<li><span>1</span></li>
				<li class="arrow"><a href="#">2</a></li>
				<li class="arrow"><a href="#">3</a></li>
				<li class="arrow"><a href="#">4</a></li>
				<li class="arrow"><a href="#">5</a></li>
				<li><a href="#"><i class="next"> </i></a></li>
			</ul>
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
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
				<div class="footer-middle-in">
					<h6>My Account</h6>
					<ul>
						<li><a href="account.html">My Account</a></li>
						<li><a href="#">Order History</a></li>
						<li><a href="wishlist.html">Wish List</a></li>
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
			Copyright © 2015 Modern Template by <a href="http://w3layouts.com/"
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