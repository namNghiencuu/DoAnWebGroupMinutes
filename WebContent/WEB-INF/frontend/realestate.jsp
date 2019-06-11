<!DOCTYPE html>
<html>
<head>
<title>Real Estate Platform</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/PageLogo/logo.png" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous" />
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheet/realestate.css" />
</head>
<body>
<%@ include file="clientHeader.jsp"%>
	<section class="body1">
		<!--Header-->
		<div id="navbar">
			<div class="logo">
				<a><img src="${pageContext.request.contextPath}/images/PageLogo/logo_main.png"
					width="inherit;" /></a>
			</div>
			<div>
				<a href="">Buy</a>
			</div>
			<div>
				<a href="">Rent</a>
			</div>
			<div>
				<a href="">Sell</a>
			</div>
			<div>
				<a href="">Agent Finder</a>
			</div>
			<div>
				<a href="" class="abc">Sign in</a>
			</div>
			<div>
				<a href="" class="abc">Help</a>
			</div>
		</div>
		<!--Main-->
		<div id="mainpage">
			<div class="findhome">
				<img src="${pageContext.request.contextPath}/images/lancastereden.jpg" class="imgfinding" />
				<div class="text">
					<h2>
						<strong>Reimagine home</strong>
					</h2>
					<h3>High persuasion , High quality</h3>
				</div>
				<div class="search-box">
					<input class="search-txt" type="text" name=""
						placeholder="Enter an address , neighborhood , city or Zip code" />
					<a class="search-btn" href="#"> <i class="fas fa-search"></i>
					</a>
				</div>
			</div>
			<h2 class="slogan">We’re reimagining how you buy, sell and
				rent. It’s now</h2>
			<h2 class="slogan">easier to get into a place you love. So
				let’s do this, together.</h2>
			<hr width="15%" text-align="center" color="red " />
			<div class="part">
				<div class="whitespace">
					<img src="${pageContext.request.contextPath}/images/pictures/buyhome.png" class="buyhomeimg" />
					<p class="buyhometext">Buy a Home</p>
					<p class="buyhometext1">Find your place with an immersive photo
						experience and the most listings, including things you won’t
						find anywhere else.</p>
					<button class="searchbuy">
						<a>Search homes</a>
					</button>
				</div>
				<div class="whitespace1">
					<img src="${pageContext.request.contextPath}/images/pictures/sellhome.png"
						class="buyhomeimg" />
					<p class="buyhometext">Sell a Home</p>
					<p class="buyhometext1">Whether you sell with new Minutes
						Offers or take another approach, we’ll help you navigate the
						path to a successful sale.</p>
					<button class="searchsell">
						<a>See your options</a>
					</button>
				</div>
				<div class="whitespace2">
					<img src="${pageContext.request.contextPath}/images/pictures/renthome.png"
						class="buyhomeimg" />
					<p class="buyhometext">Rent a Home</p>
					<p class="buyhometext1">We’re creating a seamless online
						experience – from shopping on the largest rental network, to
						applying, to paying rent.</p>
					<button class="searchrent">
						<a>Find rentals</a>
					</button>
				</div>
			</div>
		</div>
		<!--footer-->
		<%@ include file="clientFooter.jsp"%>

	</section>
</body>
</html>
