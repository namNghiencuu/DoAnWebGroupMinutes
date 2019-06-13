<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>Football News, Live Scores, Results & Transfer |
	Minutes.com</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/PageLogo/logo.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/stylesheet/client/homepage.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/fontawesome-free-5.8.1-web/css/all.css">
<link rel="stylesheet" href="https://bit.ly/2Jc8yDJ">
<link rel="stylesheet" href="https://bit.ly/2IptVj3">
<link rel="preload"
	href="/rebuild-beta-assets/fonts/goal-icons.woff2?v=3.96.0" as="font"
	type="font/woff2" crossorigin="anonymous" />
<meta charset="utf-8" />
</head>

<body>
	<%@ include file="/WEB-INF/frontend/clientHeader.jsp"%>
	<section class="body1">
		<div id="slider">
			<div id="headerSlider" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#headerSlider" data-slide-to="0" class="active"></li>
					<li data-target="#headerSlider" data-slide-to="1"></li>
					<li data-target="#headerSlider" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<c:if test="${not empty listBanner}">
						<c:forEach var="banner" items="${listBanner}">
							<div class="carousel-item active">
								<img
									src="${pageContext.request.contextPath}/images/pictures/banner1.png"
									class="d-block img-fluid">
								<div class="carousel-caption">
									<h5>${banner.title}</h5>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
				<a class="carousel-control-prev" href="#headerSlider" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#headerSlider" role="button"
					data-slide="next"> <span class="carousel-control-next-icon"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div id="main">
			<div class="main-inner">
				<div id="bigfb">
					<div>
						<a class="resetFormat football" href="footballnews">FOOTBALL
							NEWS</a>
					</div>
				</div>
				</br>
				<div id="lastAndToday">
					<div class="box center">LAST NEWS</div>
					<div id="matches" class="box center">
						<a href="${pageContext.request.contextPath}/transfer.html">TODAY'S
							MATCHES</a>
					</div>
				</div>
				<section class="widget-top-stories">
					<div class="allofstory">
						<article class="allofstory1">
							<div class="storymessivsmu">
								<a href="${pageContext.request.contextPath}/news1">
									<div class="innerstoryofmessi">
										<img class="messi_picture"
											srcset="https://images.performgroup.com/di/library/GOAL/e4/4a/lionel-messi-barcelona_12q38i1tu1qzv16hsaum7n72q5.jpg?t=150344130&quality=60&w=640 320w,https://images.performgroup.com/di/library/GOAL/e4/4a/lionel-messi-barcelona_12q38i1tu1qzv16hsaum7n72q5.jpg?t=150344130&quality=60&w=560 480w,https://images.performgroup.com/di/library/GOAL/e4/4a/lionel-messi-barcelona_12q38i1tu1qzv16hsaum7n72q5.jpg?t=150344130&quality=60&w=690 740w,https://images.performgroup.com/di/library/GOAL/e4/4a/lionel-messi-barcelona_12q38i1tu1qzv16hsaum7n72q5.jpg?t=150344130&quality=60&w=800 980w,https://images.performgroup.com/di/library/GOAL/e4/4a/lionel-messi-barcelona_12q38i1tu1qzv16hsaum7n72q5.jpg?t=150344130&quality=60&w=970 1580w" />
									</div>
							</div>
							<div class="title">
								<div class="title-wrapper">
									<h3 class="title-wrapper1 "
										title="Bloody lucky! Barcelona too good for United even on an off night for Messi & Busquets">
										Bloody lucky! Barca too good for United even on an off night</h3>
								</div>
							</div>
							</a>
						</article>
					</div>
				</section>
				<section class="nexttwostory">
					<div class="twostory">
						<article class="story1">
							<div class="messiinucl">
								<a
									href="https://www.goal.com/en-in/news/only-leo-performs-miracles-another-messi-masterclass-ends/2uvotf1ngt221wqd6qju5la7n">
									<div class="whatnext">
										<img class="messipictureucl"
											srcset="https://images.performgroup.com/di/library/GOAL/9a/a8/lionel-messi-barcelona-2018-19_19ajvz9vh6ud11u5vs6a4niil7.jpg?t=661113490&quality=60&w=640" />
									</div>
							</div>
							<div class="titlemessi">
								<h3 class="innertitle"
									title="Only Leo performs miracles! Another Messi masterclass ends Man Utd's dreams">Only
									Leo performs miracles! Messi magic ends Man Utd dream</h3>
							</div>
							</a>
						</article>
						<article class="story2">
							<div class="anh7inucl">
								<a
									href="https://www.goal.com/en-in/news/a-waste-of-money-ronaldos-champions-league-dream-ended-as/12g98uvyt9m9i188ban9txmz2h">
									<div class="whatnext1">
										<img class="anh7pictureucl"
											srcset="https://images.performgroup.com/di/library/GOAL/8d/f2/cristiano-ronaldo-juventus-2018-19_1ahv1cobap5jk1j6vgxkx9kwxe.jpg?t=671096130&quality=60&w=640" />
									</div>
							</div>
							<div class="titleanh7">
								<h3 class="innertitleanh7"
									title="‘A waste of money!’ - Ronaldo's Champions League dream ended as Ajax stun Juventus">‘A
									waste of money!’ - Ronaldo's Champions League dream ended as
									Ajax stun Juventus</h3>
							</div>
							</a>
						</article>
					</div>
				</section>
				<section class="nextstory">
					<div class="nextsory1">
						<article class="ole">
							<div class="oleucl">
								<a
									href="https://www.goal.com/en-in/news/were-scouring-the-planet-for-good-players-solskjaer-makes/1nsmaft7qup591hrn06uqgqqox">
									<div class="ole1">
										<img class="olepicture"
											srcset="https://images.performgroup.com/di/library/GOAL/a7/c4/ole-gunnar-solskjaer-manchester-united-2018-19_1lj8dgh6kazat15xnn1i3tt5g8.jpg?t=661113210&quality=60&w=640" />
									</div>
							</div>
							<div class="titleole">
								<h3 class="innertitleole"
									title="'We're scouring the planet for good players' - Solskjaer makes Man Utd transfer vow">'We're
									scouring the planet' - Ole's Man Utd transfer vow</h3>
							</div>
							</a>
						</article>
					</div>
				</section>
				<h2 class="lastnews">
					<span class="lastest">Latest</span>
				</h2>
				<!----tags-list--->
				<div class="tags-list" data-module="framework/tags-list"
					data-module-loaded="true"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
					<span class="tags-list_previous aim"> </span>
					<div class="tags-list_scroller">
						<ul class="tags-list_list clearfix"
							style="transform: translate3d(0px, 0px, 0px);">
							<li class="tags-list_tag"><a
								href="https://www.goal.com/en-in/primera-divisi%C3%B3n/34pl8szyvrbwcmfkuocjm3r6t"
								class="tags-list_link"> Primera División </a></li>
						</ul>
					</div>
				</div>
				<div id="more" class="center">
					<div>
						<a href="https://www.goal.com/en-in/news/1" class="mores"
							href="more">MORE ></a>
					</div>
				</div>
				<section class="media-group clearfix">
					<h2 class="media-headlines" itemprop="name">
						<span>VIDEO MEDIA</span>
					</h2>
					<c:if test="${not empty videoPost}">
						<c:forEach var="post" items="${videoPost}">
							<div class="video clearfix" data-group-type="video">
								<article class="videoucl">
									<div class="videoucl1">
										${post.videoLink}
									</div>
								</article>
							</div>
						</c:forEach>
					</c:if>
					<div class="center bottom">
						<a
							href="https://www.goal.com/en-in/category/videos/1/1qaufvsub9ydo10adn9s13s8vi"
							class="morevideo" href="morevideo">MORE VIDEO </a>
					</div>
				</section>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/frontend/clientFooter.jsp"%>
	<script src="https://bit.ly/2MftPN4"></script>
	<script src="https://bit.ly/2G7kMsI"></script>
	<script src="https://bit.ly/2YIyKK0"></script>
</body>

</html>