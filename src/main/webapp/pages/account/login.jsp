<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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