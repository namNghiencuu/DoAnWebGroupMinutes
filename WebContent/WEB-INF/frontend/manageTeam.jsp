<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Football News, Live Scores, Results & Transfer |
	Minutes.com</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/PageLogo/logo.png" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/manageTeam.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheet/admindashboard/navbar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/fontawesome-free-5.8.1-web/css/all.css" />
</head>
<body>
	<%@ include file="adminheader.jsp"%>

	<!--Main-->
	<div class=" columnHeader">
		<h3 style="color: white">Manage Team Info</h3>
	</div>
	<div id="generalInformation">
		<div class="teamLogo">
			<img src="${team.logo}" />
		</div>
		<div class="teamInfoText">
			<p style="font-size: 40px; color: red;">${team.name}</p>
			<h4>Coach : ${team.coach}</h4>
		</div>
	</div>
	<div class="roster" id="resultsss">
		<div class="goalkeeper">
			<div class=" columnHeader">
				<h4 style="color: white;">GOALKEEPERS</h4>
			</div>
			<div class="column ">
				<c:if test="${not empty goalkeeper}">
					<c:forEach var="player" items="${goalkeeper}">
						<div class="playerCard">
							<div class="front">
								<div class="playerLogo imageHolder">
									<img src="${player.img}" />
								</div>
								<h5 class="playerName">${player.name}</h5>
								<h5 class="playerAge">${player.age}</h5>
								<h5 class="playerShirtNumber">${player.shirtNumber}</h5>
							</div>
							<div class="back">
								<div class="back-content middle">
									<h2>${player.name}</h2>
									<div class="sm">
										<a href="#"><i class="fas fa-arrow-circle-right"></i></a> <a
											href="#"><i class="fas fa-user-edit"></i></a> <a href="#"><i
											class="far fa-trash-alt"></i></a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
		<div class="defender">
			<div class=" columnHeader">
				<h4 style="color: white;">DEFENDERS</h4>
			</div>
			<div class="column">
				<c:if test="${not empty defender}">
					<c:forEach var="player" items="${defender}">
						<div class="playerCard ">
							<div class="front">
								<div class="playerLogo">
									<img src="${player.img}" />
								</div>
								<h5 class="playerName">${player.name}</h5>
							</div>
							<div class="back">
								<div class="back-content middle">
									<h2>${player.name}</h2>
									<div class="sm">
										<a href="#"><i class="fas fa-arrow-circle-right"></i></a> <a
											href="#"><i class="fas fa-user-edit"></i></a> <a href="#"><i
											class="far fa-trash-alt"></i></a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
		<div class="midfielder">
			<div class=" columnHeader">
				<h4 style="color: white;">MIDFIELDER</h4>
			</div>
			<div class="column">
				<c:if test="${not empty midfielder}">
					<c:forEach var="player" items="${midfielder}">
						<div class="playerCard ">
							<div class="front">
								<div class="playerLogo">
									<img src="${player.img}" />
								</div>
								<h5 class="playerName">${player.name}</h5>
							</div>
							<div class="back">
								<div class="back-content middle">
									<h2>${player.name}</h2>
									<div class="sm">
										<a href="#"><i class="fas fa-arrow-circle-right"></i></a> <a
											href="#"><i class="fas fa-user-edit"></i></a> <a href="#"><i
											class="far fa-trash-alt"></i></a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
		<div class="forwarder">
			<div class=" columnHeader">
				<h4 style="color: white;">ATTACKER</h4>
			</div>
			<div class="column">
				<c:if test="${not empty attacker}">
					<c:forEach var="player" items="${attacker}">
						<div class="playerCard ">
							<div class="front">
								<div class="playerLogo">
									<img src="${player.img}" />
								</div>
								<h5 class="playerName">${player.name}</h5>
							</div>
							<div class="back">
								<div class="back-content middle">
									<h2>${player.name}</h2>
									<div class="sm">
										<a href="#"><i class="fas fa-arrow-circle-right"></i></a> <a
											href="#"><i class="fas fa-user-edit"></i></a> <a href="#"><i
											class="far fa-trash-alt"></i></a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
