<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bonfire a Ecommerce Category Flat Bootstarp Responsive
	Website Template | Home :: w3layouts</title>
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css" media="all" />
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/responsiveslides.min.js" />"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() {
		setTimeout(hideURLbar, 0); }, false);
	 	function hideURLbar(){
		 window.scrollTo(0,1);
		 } 
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
</head>
<body>
	<!--header-->
	<jsp:include page="/pages/layout/header.jsp"/>
	
	<!-- menu -->
	<jsp:include page="/pages/layout/main-menu.jsp"/>
	
	<!-- content -->
	<!-- home.index -->
	<!-- home.products -->
	<!-- home.detail-product -->
	<!-- account.register -->
	<!-- account.login -->
	<!-- account.register-suc -->
	<!-- checkout.cart -->
	<!-- checkout.check-out -->
	<!-- checkout.book-success -->
	<jsp:include page="${ nextUrl }"/>
	
	<!-- footer -->
	<jsp:include page="/pages/layout/footer.jsp"/>
</body>
</html>