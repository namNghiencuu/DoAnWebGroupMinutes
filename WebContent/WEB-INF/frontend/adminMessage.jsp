<!DOCTYPE html>
<html>

<head>
<title>Contact Message</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/navbar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/adminMessage.css" />
</head>

<body style="background-color: rgba(128, 128, 128, 0.048);">
	<%@ include file="adminheader.jsp"%>
	<div id="content">
		<div>
			<p id="pageName">Contact message</p>
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
</body>

</html>