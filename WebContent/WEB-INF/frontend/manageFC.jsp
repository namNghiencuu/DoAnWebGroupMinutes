<!DOCTYPE html>
<html>

<head>
<title>Quản lý đội bóng</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/main.css" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/navbar.css" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/manageFC.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>

<body style="background-color: rgba(128, 128, 128, 0.048);">
	<%@ include file="adminheader.jsp"%>
	<div id="content">
		<div>
			<p id="pageName">Quản lý đội bóng</p>
		</div>
		<div id="searchBox">
			<div class="circle circle-s bg-green flex-container">
				<div style="margin: auto auto;">
					<i class="fa fa-search"></i>
				</div>
			</div>
			<input type="text" id="searchInput" class="rounded-corner"
				placeholder="FC Name..."> </input>
		</div>

	</div>
	<div id="layout">
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Arsenal_Logo.png" />
			</div>
			<div class="FCName">Arsenal</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Barcelona_Logo.png" />
			</div>
			<div class="FCName">Barcelona</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Chelsea_Logo.png" />
			</div>
			<div class="FCName">Chelsea</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Liverpool_Logo.png" />
			</div>
			<div class="FCName">Liverpool</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/MC_Logo.png" />
			</div>
			<div class="FCName">Manchester City</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/MU_Logo.jpg" />
			</div>
			<div class="FCName">Manchester United</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Real madrid_Logo.png" />
			</div>
			<div class="FCName">Real Madrid</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Vietnam_Logo.png" />
			</div>
			<div class="FCName">Viet Nam</div>
		</div>
		<div class="item">
			<div class="FCLogo">
				<img class="" src="../public/images/FCLogo/Vietnam_Logo.png" />
			</div>
			<div class="FCName">Viet Nam</div>
		</div>

	</div>
</body>

</html>