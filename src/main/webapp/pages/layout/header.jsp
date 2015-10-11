<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</div>