<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="products">
		<h2 class=" products-in">PRODUCTS</h2>
		<c:forEach items="${ products }" var="product">

			<div class="col-md-3 md-col top-products">
				<div class="col-md">
					<a
						href="home.do?action=detailProduct&productId=${ product.getProductId() }"
						class="compare-in"><img src="${ product.getImg() }" alt="" />
						<div class="compare">
							<span>Add to Compare</span> <span>Add to Whislist</span>
						</div> </a>
					<div class="top-content">
						<h5>
							<a
								href="home.do?action=detailProduct&productId=${ product.getProductId() }">
								${ product.getProductName() } </a>
						</h5>
						<div class="white">
							<a
								href="home.do?action=detailProduct&productId=${ product.getProductId() }"
								class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">ADD
								TO CART</a>
							<p class="dollar">
								<span class="in-dollar">$</span><span>${ product.getPrice() }</span>
							</p>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
