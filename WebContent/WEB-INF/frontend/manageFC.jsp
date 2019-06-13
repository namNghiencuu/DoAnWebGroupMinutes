<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>Manage Team</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/navbar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/manageFC.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>

<body style="background-color: rgba(128, 128, 128, 0.048);">
	<%@ include file="adminheader.jsp"%>
	<div id="content">
		<div>
			<p id="pageName">ManageTeam</p>
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
		<c:if test="${not empty teams}">
			<c:forEach var="team" items="${teams}">
				<div class="item" onclick="location.href='manageTeam/${team.id}';">
					<div class="FCLogo">
						<img class=""
							src="${team.logo}" />
					</div>
					<div class="FCName">${team.name}</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
</body>

</html>