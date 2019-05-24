<!DOCTYPE html>
<html>
<head>
<title>Quản lý bài viết</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/main.css" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/navbar.css" />
<link rel="stylesheet"
	href="../public/stylesheet/admindashboard/manageArticle.css" />
<link rel="stylesheet" type="text/css"
	href="../public/lib/datatables/css/jquery.dataTables.min.css" />
</head>

<body style="background-color: rgba(128, 128, 128, 0.048);">
	<%@ include file="adminheader.jsp"%>
	<div id="content">
		<div>
			<p id="pageName">Quản lý bài viết</p>
		</div>

		<div id="layout">
			<!-- **************************************** -->
			<!-- Category side bar -->
			<!-- **************************************** -->
			<div id="sidebar">
				<ul>
					<li>Lorem ipsum dolor sit, .</li>
					<li>Lorem ipsum dolor sit, .</li>
					<li>Lorem ipsum dolor sit, .</li>
					<ul>
						<li>Lorem ipsum dolor sit, .</li>
						<li>Lorem ipsum dolor sit, .</li>
						<li>Lorem ipsum dolor sit, .</li>
					</ul>
					<li>Lorem ipsum dolor sit, .</li>
					<ul>
						<li>Lorem ipsum dolor sit, .</li>
						<li>Lorem ipsum dolor sit, .</li>
						<li>Lorem ipsum dolor sit, .</li>
					</ul>
				</ul>
			</div>
			<!-- **************************************** -->
			<!-- Data table -->
			<!-- **************************************** -->
			<table id="table" class="display data">
				<thead>
					<tr>
						<th>Ngày tạo</th>
						<th>Tên bài viết</th>
						<th>Bài viết gửi lên</th>
						<th>Số người truy cập</th>
						<th>Người tạo</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>34567</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>34568</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>34569</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>34566</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>34567</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>34568</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>34569</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>34566</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>34567</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>34568</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Mu has won</td>
						<td><a href="#">Some link in here</a></td>
						<td>20000</td>
						<td>Pham Binh An</td>
					</tr>
					<tr>
						<td>16/10/2018</td>
						<td>Hot transfering</td>
						<td><a href="#">Some link in here</a></td>
						<td>20000</td>
						<td>Nguyen Huy Cuong</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript"
		src="../public/lib/jquery/jquery-1.7.1.min.js"></script>
	<script type="text/javascript"
		src="../public/lib/datatables/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#table").DataTable({
				createdRow : function(row, data, index) {
					if (data[3] > 30000) {
						$("td", row).eq(3).css("color", "red");
						$("td", row).eq(3).css("font-weight", "bolder");
					}
					if (data[3] < 30000) {
						$("td", row).eq(3).css("color", "blue");
					}
				}
			});
		});
	</script>
</body>
</html>
