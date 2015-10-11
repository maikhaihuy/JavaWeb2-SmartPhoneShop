<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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