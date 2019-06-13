<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>Football News, Live Scores, Results & Transfer |
	Minutes.com</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/PageLogo/logo.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheet/client/contact-us.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://bit.ly/2Jc8yDJ">
<link rel="stylesheet" href="https://bit.ly/2IptVj3">
<meta charset="utf-8" />
</head>

<body>
	<%@ include file="adminheader.jsp"%>
	<section class="body1">
		<div id="navbar">
			<div class="logo">
				<a><img
					src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png"
					width="inherit;" /></a>
			</div>
			<div>
				<a href="./homepage.html">News</a>
			</div>
			<div>
				<a href="./transfer.html">Live Scores</a>
			</div>
			<div>
				<a href="./Leagues&Cups">Leagues & Cups</a>
			</div>
			<div>
				<a href="./test1.html">Teams</a>
			</div>
			<div class="search-box">
				<input class="search-txt" type="text" name=""
					placeholder="Type to search"> <a class="search-btn"
					href="#"> <i class="fas fa-search"></i>
				</a>
			</div>
			<div>
				<img
					src="${pageContext.request.contextPath}/images/English icon.png"
					width="25px;" /> <a class="abc" href="english">&emsp;English</a>
			</div>
		</div>
		<!------>
		<!---ContactBody--->
		<div class="contactBody">
			<div class="contact-title">
				<h1>SAY HELLO</h1>
				<h3>Contact Us</h3>
			</div>
			<div class="contact-form">
				<form action="/Minutes/saveMessage" id="contact-form" method="POST" modelAttribute="Message" >
					<input name="senderName" type="text" class="form-control"
						placeholder="Your Name" />
					<br>
					<input name="email" type="email" class="form-control"
						placeholder="Your Email" />
					<br>
					<textarea name="content" class="form-control"
						placeholder="Message" rows="3"></textarea>
					<br>
					<input type="submit" class="form-control submit" value="Submit" />
				</form>
			</div>
		</div>
		<!------>
		<%@ include file="clientFooter.jsp"%>
	</section>
</body>

</html>