<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
<title>Admin Dashboard</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css"
	href="/MinutesServer/stylesheet/admindashboard/admindashboard.css">
<link rel="stylesheet" type="text/css"
	href="/MinutesServer/stylesheet/admindashboard/main.css">
<link rel="stylesheet" type="text/css"
	href="/MinutesServer/stylesheet/admindashboard/navbar.css">
<link rel="stylesheet" type="text/css"
	href="/MinutesServer/lib/fontawesome-free-5.8.1-web/css/all.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
</head>

<body style="background-color: rgba(128, 128, 128, 0.048);">
	<%@ include file="adminheader.jsp"%>
	<div id="content">
		<div>
			<p id="pageName">Home</p>
		</div>
		<!-- **************************************** -->
		<!-- Section 1 -->
		<!-- **************************************** -->

		<div id="result">
			<div class="result-item bg-green">
				<i class="fas fa-user"></i>
				<h3>#Access</h3>
				<h1>3000000</h1>
			</div>
			<div class="result-item bg-blue">
				<i class="fas fa-file-archive"></i>
				<h3>#Article</h3>
				<h1>3000000</h1>
			</div>
			<div class="result-item bg-purple">
				<i class="fas fa-share"></i>
				<h3>#Share</h3>
				<h1>3000000</h1>
			</div>
			<div class="result-item bg-red">
				<i class="fas fa-buffer"></i>
				<h3>#Revenue</h3>
				<h1>3000000</h1>
			</div>
		</div>
		<!-- **************************************** -->
		<!-- Section 2 -->
		<!-- **************************************** -->
		<div id="social-media-and-website-visit">
			<div class="flex-container flex-column bg-green"
				style="grid-column: 1; grid-row: 2;">
				<h1>1234+</h1>
				<h2>Subscribe</h2>
				<button type="button"
					class="btn btn-md rounded-corner bg-trans bg-hover-gray">
					More Info</button>
			</div>
			<div class="flex-container flex-column bg-purple"
				style="grid-column: 1; grid-row: 3;">
				<h1>1234+</h1>
				<h2>Facebook likes</h2>
				<button class="btn btn-md rounded-corner bg-trans bg-hover-gray">
					More Info</button>
			</div>
			<div class="flex-container flex-column bg-blue"
				style="grid-column: 1; grid-row: 4;">
				<h1>1234+</h1>
				<h2>Twitter followers</h2>
				<button class="btn btn-md rounded-corner bg-trans bg-hover-gray">
					More Info</button>
			</div>
			<div class="center" style="grid-column: 3; grid-row: 2/span 3;">
				<canvas id="visitChart" aria-label="chart-visit-per-month"
					role="img">
        		</canvas>
			</div>
		</div>
		<!-- **************************************** -->
		<!-- Section 3 -->
		<!-- **************************************** -->

		<div id="activity-and-todo">
			<div id="activity">
				<div class="flex-container flex-align-items-center"
					style="margin-bottom: 20px;">
					<h1>Recent activity</h1>
					<button
						class="btn circle circle-s bg-blue flex-item-left shape-center">
						&plus;</button>
				</div>
				<div class="assignTask">
					<div class="circle circle-s avatar">
						<img src="/MinutesServer/images/avatar.jpg" alt="user">
					</div>
					<div class="name">
						Phan Hoang Nam <span style="color: gray;"> | 6h30</span>
					</div>
					<div class="dosomething">Joined task abc with abc, xyz, lmc</div>
					<div class="detail">Joined task abc with abc, xyz, lmc</div>
				</div>
				<div class="assignTask">
					<div class="circle circle-s avatar">
						<img src="/MinutesServer/images/avatar.jpg" alt="user">
					</div>
					<div class="name">
						Phan Hoang Nam <span style="color: gray;"> | 6h30</span>
					</div>
					<div class="dosomething">Write an article name abcxyz</div>
					<div class="detail">
						Link to the article <span><a href="#">abcxyz</a></span>
					</div>
				</div>
				<div class="assignTask">
					<div class="circle circle-s avatar">
						<img src="/MinutesServer/images/avatar.jpg" alt="user">
					</div>
					<div class="name">
						Phan Hoang Nam <span style="color: gray;"> | 6h30</span>
					</div>
					<div class="dosomething">Joined task abc with abc, xyz, lmc</div>
					<div class="detail">Joined task abc with abc, xyz, lmc</div>
				</div>
				<div class="assignTask">
					<div class="circle circle-s avatar">
						<img src="/MinutesServer/images/avatar.jpg" alt="user">
					</div>
					<div class="name">
						Phan Hoang Nam <span style="color: gray;"> | 6h30</span>
					</div>
					<div class="dosomething">Joined task abc with abc, xyz, lmc</div>
					<div class="detail">Joined task abc with abc, xyz, lmc</div>
				</div>
				<div class="doneTask"></div>
			</div>
			<div id="todo">
				<div class="flex-container flex-align-items-center"
					style="margin-bottom: 20px;">
					<h1>To do list</h1>
					<button id="addTodo__button"
						class="btn circle circle-s bg-blue flex-item-left shape-center">
						&plus;</button>
				</div>
				<div class="todo-item">
					<input type="checkbox" class="checkbox" name="a" value="false">
					<label class="detail">Stuff to do</label>
					<div class="responsiblePeople">
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
					</div>
					<div class="time">time do it</div>
				</div>
				<div class="todo-item">
					<input type="checkbox" class="checkbox" name="a" value="false">
					<label class="detail">Stuff to do</label>
					<div class="responsiblePeople">
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
					</div>
					<div class="time">time do it</div>
				</div>
				<div class="todo-item">
					<input type="checkbox" class="checkbox" name="a" value="false">
					<label class="detail">Stuff to do</label>
					<div class="responsiblePeople">
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
						<div class="circle circle-s avatar">
							<img src="/MinutesServer/images/avatar.jpg" alt="user">
						</div>
					</div>
					<div class="time">time do it</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /* ************************************************** */
      /* ************************************************** */
      /* MODAL */
      /* ************************************************** */
      /* ************************************************** */ -->
	<div id="addTodo__modal" class="modal modal-submit">
		<div class="modal-content">
			<div class="modal-header">
				<span class="close">&times;</span>
				<h2>Add todo task</h2>
			</div>
			<div class="modal-body">
				<p>Some text in here</p>
			</div>
			<div class="modal-footer">
				<button type="submit">Add</button>
			</div>

		</div>
	</div>

	<script>
		var ctx = document.getElementById('visitChart').getContext('2d');
		var visitChart = new Chart(ctx,
				{
					type : 'bar',
					data : {
						labels : [ 'January', 'February', 'March', 'April',
								'May', 'June', 'July', 'August', 'September',
								'October', 'November', 'December' ],
						datasets : [ {
							label : '# of Visitor',
							data : [ 12, 19, 3, 5, 2, 3 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)',
									'rgba(255, 159, 64, 0.2)', ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)',
									'rgba(255, 159, 64, 1)', ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						},
					},
					responsive : true,
					maintainAspectRatio : false
				});
	</script>
	<script>
		// Get the modal
		var modal = document.getElementById('addTodo__modal');

		// Get the button that opens the modal
		var btn = document.getElementById("addTodo__button");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
</body>

</html>