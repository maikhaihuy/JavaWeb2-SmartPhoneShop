<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${ cart == null || cart.size() == 0 }">
	<div class="container">
		<div class="check-out">
			<h4 class="title">Shopping cart is empty</h4>
			<p class="cart">
				You have no items in your shopping cart.<br>Click<a
					href="home.do"> here</a> to continue shopping
			</p>
		</div>
	</div>
</c:if>
<c:if test="${ cart != null && cart.size() > 0  }">
	<div class="container">

		<div class="check-out">
			<p>Total: $${ totalCost }</p>
			<a
				href="javascript:clickEdit('checkout.do', { action : 'checkOut'});"
				class="hvr-shutter-in-vertical">Checkout</a> <br></br>

			<table class="table">
				<tr>
					<td>Product Name</td>
					<td>Image</td>
					<td>Price</td>
					<td>Size screen</td>
					<td>Color</td>

				</tr>
				<c:forEach var="product" items="${ cart }">
					<tr>
						<td><c:out value="${ product.product.productName }" /> <a
							href="javascript:clickEdit('checkout.do', { action : 'editCart' , detailProductId : '${product.detailProductId }' });"
							class="hvr-shutter-in-vertical cart-to">Delete</a></td>
						<td><img src="<c:out value="${ product.product.img }" />" /></td>
						<td><c:out value="${ product.product.price }" /></td>
						<td><c:out value="${ product.product.sizeScreen }" /></td>
						<td><c:out value="${ product.color.colorName }" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</c:if>


<script>
	function clickEdit(path, params, method) {
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
