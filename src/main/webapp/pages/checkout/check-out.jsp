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
		<div class="account">
			<form action="checkout.do" method="post">
				<div>
					<span>Phone*</span> <input type="text" name="phone" />
				</div>
				<div>
					<span>Address*</span> <input type="text" name="address">
				</div>
				<input type="submit" value="Agree"> <input type="hidden"
					name="action" value="confirmBook">
			</form>
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