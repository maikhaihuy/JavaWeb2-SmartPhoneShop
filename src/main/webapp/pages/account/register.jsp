<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="account">
		<h2 class="account-in">Account</h2>
		<c:if test="${not empty msg}">
			<h4>${msg}</h4>
		</c:if>

		<form id="formReg" action="account.do" method="post">
			<div>
				<span>First Name*</span> <input type="text" name="firstname">
			</div>
			<div>
				<span class="name-in">Last Name*</span> <input type="text"
					name="lastname">
			</div>
			<div>
				<span class="mail">Email*</span> <input type="text" name="email">
			</div>
			<div>
				<span class="word">Password*</span> <input type="password"
					name="password">
			</div>
			<div>
				<span class="word">Confirm pass*</span> <input type="password"
					name="password">
			</div>
			<input type="submit" value="Register"> <input type="hidden"
				name="action" value="register">
		</form>
	</div>
</div>