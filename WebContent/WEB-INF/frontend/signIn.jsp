<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Sign In</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/PageLogo/logo.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/client/signIn.css" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
</head>
<body>
<%@ include file="clientHeader.jsp"%>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form class="form-4" action="${pageContext.request.contextPath}/createUserAccount" method="POST">
				<h1>Create Account</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
						href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				</div>
				<span>or create new account</span> <input type="text"
					placeholder="Username" name="userName" /> <input type="text" placeholder="Email" name="email" />
				<input type="password" class="input-4" placeholder="Password" name="password"/> <input
					type="password" class="input-4" placeholder="Confirm Password" />
				<span class="progress-bar_text">Password is blank</span>
				<button type="submit">Sign Up</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="${pageContext.request.contextPath}/j_spring_security_check" method="POST">
				<h1>Sign in</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a> <a
						href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				</div>
				<span>or use your account</span> <input type="text" name="username"
					placeholder="username" /> <input type="password" name="password"
					placeholder="Password" /> <a href="#">Forgot your password?</a>
				<%if (Boolean.parseBoolean(request.getParameter("error")) == true){ %>
				<b style="color: red">There is error</b>
				<% } %>
				<button type="submit">Sign In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Cheer Up!</h1>
					<p>Get an account explore more fearures</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/script/signIn.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/jquery/jquery-1.7.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/fontawesome-free-5.8.1-web/js/fontawesomeKit.js"></script>
</body>
</html>
