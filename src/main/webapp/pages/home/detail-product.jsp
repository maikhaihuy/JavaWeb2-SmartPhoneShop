
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container">
		<div class="single">
			<div class="col-md-9 top-in-single">
				<div class="col-md-5 single-top">
					<a href="#"> <img
								class="etalage_thumb_image img-responsive"
								src="${product.getImg() }" alt="">
						</a>
				</div>
				<div class="col-md-7 single-top-in">
					<div class="single-para">
						<h4>${ product.getProductName() }</h4>

						<div class="available">
							<h6>Information :</h6>
							<ul>
								<li>Color: <select id="colorId" name="colorId">
										<c:forEach items="${ colors }" var="color">
											<option value=${ color.getColorId() }>${ color.getColorName() }</option>
										</c:forEach>
								</select>

								</li>
								<li>Size screen: ${ product.getSizeScreen() }</li>
							</ul>
						</div>
						<div class="para-grid">
							<span class="add-to">${ product.getPrice() }</span> <a
								href="javascript:clickAdd('checkout.do', { action : 'addToCart' , productId : '${product.getProductId() }' });"
								class="hvr-shutter-in-vertical cart-to">Add to Cart</a>
							<div class="clearfix"></div>
						</div>
						<a href="#" class="hvr-shutter-in-vertical ">More details</a>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="content-top-in">
					<div class="col-md-4 top-single">
						<div class="col-md">
							<img src="resources/images/pic8.jpg" alt="" />
							<div class="top-content">
								<h5>Mascot Kitty - White</h5>
								<div class="white">
									<a href="#"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>2</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top-single">
						<div class="col-md">
							<img src="resources/images/pic9.jpg" alt="" />
							<div class="top-content">
								<h5>Mascot Kitty - White</h5>
								<div class="white">
									<a href="#"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>2</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top-single-in">
						<div class="col-md">
							<img src="resources/images/pic10.jpg" alt="" />
							<div class="top-content">
								<h5>Mascot Kitty - White</h5>
								<div class="white">
									<a href="#"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
										TO CART</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>2</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="single-bottom">
					<h4>Categories</h4>
					<ul>
						<li><a href="#"><i> </i>Fusce feugiat</a></li>
						<li><a href="#"><i> </i>Mascot Kitty</a></li>
						<li><a href="#"><i> </i>Fusce feugiat</a></li>
						<li><a href="#"><i> </i>Mascot Kitty</a></li>
						<li><a href="#"><i> </i>Fusce feugiat</a></li>
					</ul>
				</div>
				<div class="single-bottom">
					<h4>Product Categories</h4>
					<ul>
						<li><a href="#"><i> </i>feugiat(5)</a></li>
						<li><a href="#"><i> </i>Fusce (4)</a></li>
						<li><a href="#"><i> </i> feugiat (4)</a></li>
						<li><a href="#"><i> </i>Fusce (4)</a></li>
						<li><a href="#"><i> </i> feugiat(2)</a></li>
					</ul>
				</div>
				<div class="single-bottom">
					<h4>Product Categories</h4>
					<div class="product">
						<img class="img-responsive fashion" src="resources/images/st1.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class="price price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="product">
						<img class="img-responsive fashion" src="resources/images/st2.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class="price price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="product">
						<img class="img-responsive fashion" src="resources/images/st3.jpg" alt="">
						<div class="grid-product">
							<a href="#" class="elit">Consectetuer adipiscing elit</a> <span
								class="price price-in"><small>$500.00</small> $400.00</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<script>
		function clickAdd(path, params, method) {
			// Warning Dry-code
			// Add param colorId
			var selectBox = document.getElementById("colorId");
			var selectedValue = selectBox.options[selectBox.selectedIndex].value;

			params.colorId = selectedValue;

			// Create form to submit
			method = method || "post";

			var form = document.createElement("form");
			form.setAttribute("method", method);
			form.setAttribute("action", path);

			for ( var key in params) {
				if (params.hasOwnProperty(key)) {
					var hiddenField = document.createElement("input");
					hiddenField.setAttribute("type", "hidden");
					hiddenField.setAttribute("name", key);
					hiddenField.setAttribute("value", params[key]);

					form.appendChild(hiddenField);
				}
			}

			document.body.appendChild(form);
			form.submit();
		}
	</script>